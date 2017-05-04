# POST method: $req
$requestBody = Get-Content $req -Raw | ConvertFrom-Json
$env:in_json = $requestBody.json
#$env:in_json = Get-Content "sample_input\sample.json"

cd D:\home\site\wwwroot\dist

$env:Rscript = ".\resources\R-Portable\App\R-Portable\bin\Rscript.exe"
$output = & $env:Rscript ".\resources\process_json.R"

Out-File -Encoding Ascii -FilePath $res -inputObject $output
