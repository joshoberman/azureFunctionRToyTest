sink("redirect.txt")
library(devtools) 
library(soiCalcEngine)

input_json <- Sys.getenv("in_json")

output_json <- runCalc(input_json)

sink()

write(output_json, path = stdout())