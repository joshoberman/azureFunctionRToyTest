# POST method: $req
$inputJson = Get-Content $req 

cd D:\home\site\wwwroot\runCalc
D:\home\R-3.3.3\bin\x64\Rscript.exe testAzureFunction.R $inputJson $outJson> output\output.log 2>&1

Out-File -Encoding Ascii -FilePath $res -inputObject $outJson
