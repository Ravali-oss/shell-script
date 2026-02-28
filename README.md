# shell-script
When the programs or script is executed , we need to store in log files, to check what happened while we  were executing the script.

LOGS --> logging the result to some file.

In shellscript we can implement logs using redirectors.
 example ls -l > output.log
 > -output --> It overwrites the output
 < - input
 & - both success and failure

 ls -la &>> output.log

 We can create the log folder in cd /var/log with shellscript-logs name
 we can also provide the timestamp, when these logs executed in this format.
