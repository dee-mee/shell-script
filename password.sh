#!/bin/bash

# Set the user whose password you want to change
USER="username"

# Set the number of days before the password should be changed
DAYS_BEFORE_CHANGE=30

# Get the current date and the date when the password was last changed
CURRENT_DATE=$(date +%Y-%m-%d)
LAST_CHANGE_DATE=$(chage -l $USER | grep "Last password change" | awk '{print $NF}')

# Calculate the number of days since the password was last changed
DIFF_DAYS=$(( $(date -d "$LAST_CHANGE_DATE" +%s) - $(date -d "$CURRENT_DATE" +%s) ))
DIFF_DAYS=$(( (DIFF_DAYS / 86400) + 1 ))

# Check if the password needs to be changed
if [ $DIFF_DAYS -gt $DAYS_BEFORE_CHANGE ]; then
  # Generate a new random password
  NEW_PASSWORD=$(date +%s | sha256sum | base64 | head -c 10)

  # Change the user's password
  echo "$USER:$NEW_PASSWORD" | chpasswd

  # Print a message indicating that the password was changed
  echo "Password for user $USER has been changed to $NEW_PASSWORD"
fi
