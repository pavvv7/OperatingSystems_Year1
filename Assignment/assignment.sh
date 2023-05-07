#!/bin/bash
while true;
do
  #allows history in current terminal session
  history=$(cat ~/.bash_history)

  #menu display
  echo "Bash Commands Menu"
  echo "1: List files"
  echo "2: Show free disk space"
  echo "3: Show system path"
  echo "4: Display command history"
  echo "5: Backup Files"
  echo "6: Exit"
  echo -n "Please enter your option: "

  #reads in input from the user
  read input

  #case statment to process user input
  case $input in
    1) echo "Current files in directory:"; ls -a; echo;; #lists all files in current directory
    
    2) echo "Current Free Disk-Space Available:"; df -h; echo;; #shows free disk-space available
    
    3) echo "Your current system path is:"; pwd; echo;; #shows current path
    
    4) echo "Your command history is:"; echo $history ;echo ;; #will show command history
    
    5) echo "Enter your directory you want to backup in format /your/directory/here: "; read directory; mkdir /workspaces/OperatingSystems_Year1/BackupFolder;cd $directory; cp -r $directory /workspaces/OperatingSystems_Year1/BackupFolder; ls -a ;echo;;
       #will recursively backup files from a specified directory and all its sub-directories (the user should type in the name of the directory), 
       #to a newly created directory called BackupFolder; and then list the contents of this directory
       
    6) exit 1;; #exits program
    *) echo "Input Not Valid. Try Again."; echo;;
  esac
done
