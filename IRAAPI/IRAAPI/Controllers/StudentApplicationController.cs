﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using IRAAPI.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace IRAAPI.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class StudentApplicationController : ControllerBase
    {
        private readonly IRAAPIContext _db;
        private readonly IWebHostEnvironment _web;
        
        public StudentApplicationController(IRAAPIContext db, IWebHostEnvironment web)
        {
            _db = db;
            _web = web;
        }

        [Authorize]
        [HttpGet]
        public Object GetApplications(Guid studentId)
        {
            var studentNumericId = -1;
            studentNumericId = _db.Students.Where(s => s.Guid == studentId).Select(s => s.Id).FirstOrDefault();
            
            if (studentNumericId == -1)
                return NotFound();

            var studentApplications = _db.StudentApplications.Where(a => a.StudentId == studentNumericId)
                .Select(a => new StuduentApplicationDTO()
                { 
                    id = a.guid,
                    date = Convert.ToDateTime(a.Date).ToString("MM/d/yyyy"),
                    subject = a.Subject,
                    content = a.Content,
                    startDate = Convert.ToDateTime(a.StartDate).ToString("MM/d/yyyy"),
                    endDate = Convert.ToDateTime(a.EndDate).ToString("MM/d/yyyy"),
                    status = a.Status
                })
                .ToList();

            if (studentApplications == null)
                return NotFound();

            StuduentApplicationMainDTO studuentApplicationMainDTO = new StuduentApplicationMainDTO();
            studuentApplicationMainDTO.studuentApplications = studentApplications;
            
            foreach (var application in studentApplications)
            {
                var studentApplicationNumericId = _db.StudentApplications.Where(a => a.guid == application.id).Select(a => a.Id).FirstOrDefault();
                var studentApplicationFiles = _db.StudentApplicationFiles.Where(a => a.ApplicationId == studentApplicationNumericId)
                    .Select(s => new StuduentApplicationFileDTO()
                    { 
                        id = s.guid,
                        fileName = s.OrignalName,
                        filePath = s.Path
                    })
                    .ToList();
                studuentApplicationMainDTO.studuentApplicationFiles.Add(studentApplicationFiles);
            }
            return new { studentApplications =  studuentApplicationMainDTO};
        }

        [Authorize]
        [HttpPost]
        public async Task<Object> CreateApplication([FromForm] ApplicationDto application)
        {
            try
            {
                StudentApplication studentApplication = new StudentApplication();
                //I will use thid guid to get id of application after inerting data in StudentApplications Table
                Guid applicationGuid = Guid.NewGuid();
                studentApplication.guid = applicationGuid;
                studentApplication.Content = application.ApplicationBody;
                studentApplication.Subject = application.SubjectLine;

                //var studentGuid = JsonConvert.DeserializeObject<Guid>(form["studentId"]);
                //studentApplication.Subject = JsonConvert.DeserializeObject<string>(form["subjectLine"].ToString());
                //studentApplication.Content = JsonConvert.DeserializeObject<string>(form["applicationBody"].ToString());
                //var startDate = JsonConvert.DeserializeObject<DateTime>(form["startDate"].ToString());
                //var endDate = JsonConvert.DeserializeObject<DateTime>(form["endDate"].ToString());

                //Guid studentGuid = new Guid(HttpContext.Request.Form["studentId"]);
                //studentApplication.Subject = HttpContext.Request.Form["subjectLine"].ToString();
                //studentApplication.Content = HttpContext.Request.Form["applicationBody"].ToString();
                //string startDate = HttpContext.Request.Form["startDate"];
                //string endDate = HttpContext.Request.Form["endDate"];

                if (application.StartDate != null && application.EndDate != null)
                {
                    studentApplication.StartDate = DateTime.Parse(HttpContext.Request.Form["startDate"]);
                    studentApplication.EndDate = DateTime.Parse(HttpContext.Request.Form["endDate"]);
                }
                
                var studentNumericId = _db.Students.Where(s => s.Guid == application.StudentId).Select(s => s.Id).FirstOrDefault();
                studentApplication.StudentId = studentNumericId;


                await _db.StudentApplications.AddRangeAsync(studentApplication);
                await _db.SaveChangesAsync();

                var applicationId = _db.StudentApplications.Where(a => a.guid == applicationGuid).Select(a => a.Id).FirstOrDefault();

                var files = Request.Form.Files;
                string logicalFilename, fileExtension;
                if (files != null)
                {
                    string UploadFolder = Path.Combine(_web.ContentRootPath, "wwwroot\\Students_Applications");

                    if (!Directory.Exists(UploadFolder))
                    {
                        Directory.CreateDirectory(UploadFolder);
                    }
                    foreach (var file in files)
                    {
                        StudentApplicationFile studentApplicationFile = new StudentApplicationFile();

                        fileExtension = System.IO.Path.GetExtension(file.FileName);
                        logicalFilename = Guid.NewGuid().ToString() + "_" + file.FileName;
                        string filePath = Path.Combine(UploadFolder, logicalFilename);
                        file.CopyTo(new FileStream(filePath, FileMode.Create));

                        studentApplicationFile.OrignalName = file.FileName;
                        studentApplicationFile.LogicalName = logicalFilename;
                        studentApplicationFile.Path = filePath;
                        studentApplicationFile.ApplicationId = applicationId;
                        studentApplicationFile.Extension = fileExtension;
                        studentApplicationFile.Size = file.Length;

                        await _db.StudentApplicationFiles.AddRangeAsync(studentApplicationFile);
                        await _db.SaveChangesAsync();
                    }
                }
                return Ok();
            }
            catch (Exception e)
            {
                return "Error, Something went wrong \n" + e;
            }
        }

        
    }

    public class StuduentApplicationMainDTO
    {
        public List<StuduentApplicationDTO>  studuentApplications { get; set; }
        public List<List<StuduentApplicationFileDTO>> studuentApplicationFiles { get; set; }
    }
    public class StuduentApplicationDTO
    {
        public Guid id { get; set; }
        public string date { get; set; }
        public string subject { get; set; }
        public string content { get; set; }
        public string startDate { get; set; }
        public string endDate { get; set; }
        public string status { get; set; }
    }

    public class StuduentApplicationFileDTO
    {
        public Guid id { get; set; }
        public string fileName { get; set; }
        public string filePath { get; set; }
    }

    public class ApplicationDto
    {
        public Guid StudentId { get; set; }
        public string SubjectLine { get; set; }
        public string ApplicationBody { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public IFormFile Files { get; set; }
    }

}