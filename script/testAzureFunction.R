library(devtools) 
library(soiCalcEngine)

input_json <<- Sys.getenv("in_json")

tm <- system.time({output_json <- runCalc(input_json)})

write(tm["elapsed"], stdout())
