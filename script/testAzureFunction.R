library(devtools) 
library(soiCalcEngine)

input_json <<- Sys.getenv("in_json")

output_json <- runCalc(input_json)

write(output_json, stdout())
