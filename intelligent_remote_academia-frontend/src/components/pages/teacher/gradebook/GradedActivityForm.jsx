import React, { useState } from 'react';
import Button from '@material-ui/core/Button';
import TextField from '@material-ui/core/TextField';
import Dialog from '@material-ui/core/Dialog';
import DialogActions from '@material-ui/core/DialogActions';
import DialogContent from '@material-ui/core/DialogContent';
import DialogContentText from '@material-ui/core/DialogContentText';
import DialogTitle from '@material-ui/core/DialogTitle';
import Snackbar from '../../../common/snackbars/Snackbar';

export default function GradedActivityForm({ button }) {
  const [open, setOpen] = useState(false);
  const [activityTitle, setActivityTitle] = useState('');
  const [status, setStatus] = useState(null);
  const [message, setMessage] = useState('');

  const handleClickOpen = () => {
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleTextChange = (event) => {
    const activity = event.target.value;
    setActivityTitle(activity);
  };

  const handleCreateActivity = async () => {
    setMessage('New Graded Activity Created!');
    setStatus('success');
    setTimeout(() => {
      handleClose();
    }, 5000);
  };
  return (
    <div>
      <Button
        variant={button.variant}
        color={button.color}
        onClick={handleClickOpen}
      >
        {button.text}
      </Button>
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="form-dialog-title"
      >
        <DialogTitle id="form-dialog-title">
          Create New Graded Activity
        </DialogTitle>
        <DialogContent>
          <DialogContentText>
            Add a new graded activity to your course. Enter the title for the
            activity (e.g. Quiz, Assignment, Homework, Project, etc.)
          </DialogContentText>
          <TextField
            autoFocus
            margin="dense"
            id="name"
            label="Graded Activity Title"
            fullWidth
            onChange={handleTextChange}
          />
        </DialogContent>
        <DialogActions>
          <Button onClick={handleClose} color="primary">
            Cancel
          </Button>
          <Button
            onClick={handleCreateActivity}
            color="primary"
            disabled={activityTitle.trim().length === 0 ? true : false}
          >
            Save
          </Button>
        </DialogActions>
      </Dialog>
      {status && (
        <Snackbar
          type={status}
          message={message}
          anchorOrigin={{ vertical: 'top', horizontal: 'right' }}
        />
      )}
    </div>
  );
}
