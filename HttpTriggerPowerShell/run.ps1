# POST method: $req
$requestBody = Get-Content $req -Raw | ConvertFrom-Json
$env:in_json = $requestBody.json
#$env:in_json = Get-Content "sample_input\sample.json"

cd D:\home\site\wwwroot\script

$env:Rscript = "D:\home\R-3.3.3\bin\x64\Rscript.exe"
$output = &$env:Rscript testAzureFunction.R

Out-File -Encoding Ascii -FilePath $res -inputObject $output