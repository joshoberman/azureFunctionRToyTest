# POST method: $req
$requestBody = Get-Content $req -Raw | ConvertFrom-Json
$env:in_json = $requestBody.json
#$env:in_json = Get-Content "sample_input\sample.json"

cd D:\home\site\wwwroot\

$env:Rscript = ".\resources\R-Portable\App\R-Portable\bin\Rscript.exe"
$output = & ".\resources\R-Portable\App\R-Portable\bin\Rscript.exe" ".\resources\process_json.R"

Out-File -Encoding Ascii -FilePath $res -inputObject $output
