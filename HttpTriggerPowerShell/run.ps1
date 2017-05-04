# POST method: $req
$requestBody = Get-Content $req -Raw | ConvertFrom-Json
$env:in_json = $requestBody.json
#$env:in_json = Get-Content "sample_input\sample.json"

cd D:\home\site\wwwroot

#$env:Rscript = ".\resources\R-Portable\App\R-Portable\bin\Rscript.exe"
$output = & "D:\home\R-3.3.3\bin\x64\Rscript.exe" ".\script\testAzureFunction.R"

Out-File -Encoding Ascii -FilePath $res -inputObject $output