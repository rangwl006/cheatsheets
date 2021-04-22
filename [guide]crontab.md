# Using crontab

## Background

crontab can be used to schedule tasks to be done at different time intervals.
For help on getting the right inputs, *go to* https://crontab.guru/#

## Editing the crontab file
1. View the crontab config file by $ crontab -e
2. Select your preferred text editor (this occurs only the first time when setting up scheduled tasks)
3. Input the selected task to run.
4. View the crontab config file on the terminal by $ crontab -l
## crontab syntax
The basic syntax of crontab is as follows:

minute hour date month day(week) COMMAND/SCRIPT

  \*      \*    \*    \*      \*           echo "feeding time"

## Some examples

1. *Run ffmpeg to output hourly video files* (Source: https://stackoverflow.com/questions/43570679/ffmpeg-capture-rtsp-stream-to-hourly-file)

0 * * * * ffmpeg -i rtsp://[IP Address]:[port]/[URL] -vcodec copy -r 60 -t 3540 -y $(date +\%Y\%m\%d\%H).mp4

2. *Run a script every 5 minutes*

*/5 * * * * ffmpeg -i script.sh

**Note**: /5 denotes every 5 [time interval]. Likewise, /1 denotes every 1 [interval]
**Note**: when running .sh scripts, chmod 755 first

## Starting & stopping the service
1. to start the servce: $ sudo service cron start
2. to start the servce: $ sudo service cron stop
