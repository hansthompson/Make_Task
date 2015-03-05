recurrance <- "once"
# the name of the task file to be created
task_name <- "MyTask"
# the command to be executed (a bat file or executable)
bat_loc <- "C:\\Users\\Tyler\\Desktop\\Make_Task\\task.bat"
#The time of day to run if it needs to be specified
time <- "00:21"

Make_Task <- function(recurrence, task_name, bat_loc, time) {
if(Sys.info()[1] == "Windows") {system(sprintf("schtasks /create /sc %s /tn %s /tr \"%s\" /st %s", recurrence, task_name, bat_loc, time))}
}

## Additional arguments
browseURL("https://msdn.microsoft.com/en-us/library/windows/desktop/bb736357%28v=vs.85%29.aspx")

## Open the scheduled tasks
system("control schedtasks")
