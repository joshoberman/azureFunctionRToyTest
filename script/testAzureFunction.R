library(devtools) 
library(jsonlite)
library(soiCalcEngine)

input_json <<- Sys.getenv("in_json")

tm <- system.time({output_json <- runCalc(input_json)})

out_list <- list(time = tm, out_json = output_json)
out_list <- jsonlite::toJSON(out_list)

write(out_list, stdout())
