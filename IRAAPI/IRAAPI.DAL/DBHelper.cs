﻿using System;
using System.Collections.Generic;
using System.Text;

namespace IRAAPI.DAL
{
    class DBHelper
    {
        public static string AplicationStartupPath { get; set; }
        public static void SetPath(string applicationPath)
        {
            AplicationStartupPath = applicationPath;
        }
        public static string conStr = @"server=DESKTOP-BFHGHRM\SQLEXPRESS;database=IRA_API;Integrated Security=SSPI;";
    }
}