#!/bin/bash

# Define the directory and backup file name
targetfile="/home/ubuntu/bash"  # Replace this with the file or directory to back up
Dest="/home/ubuntu/backup"      # Destination directory for backup
time=$(date +%m-%d-%y_%H_%M_%S)  # Timestamp for unique backup name
backupfiles="backup_files_$time.tar.gz"  # Backup file name
s3bucket="awsbash001"  # S3 bucket name

# Check if the target file or directory exists
if [ ! -e "$targetfile" ]; then
    echo "The file or directory '$targetfile' does not exist."
    exit 3
fi

# Check if the backup file already exists in the destination directory
if [ -f "$Dest/$backupfiles" ]; then
    echo "The backup file '$backupfiles' already exists."
else
    echo "Your backup is being created..."
    tar -czvf "$Dest/$backupfiles" "$targetfile"  # Create the backup file
    echo "Your backup was completed successfully: $Dest/$backupfiles"
fi

# Upload the backup file to S3 bucket
if [ $? -eq 0 ]; then
    echo "Your backup file is being uploaded..."
    aws s3 cp $Dest/$backupfiles s3://$s3bucket/
    if [ $? -eq 0 ]; then
        echo "Your backup file was uploaded successfully to S3."
    else
        echo "Failed to upload the backup file to S3."
        exit 4
    fi
else
    echo "Backup creation failed, aborting the upload."
    exit 5
fi



