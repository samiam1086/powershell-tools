New-Item "$home\Desktop\out.txt"
'Date' | Out-File -FilePath "$home\Desktop\out.txt" -Append
Get-Date | Out-File -FilePath "$home\Desktop\out.txt" -Append
'Computer Info' | Out-File -FilePath "$home\Desktop\out.txt" -Append
Get-ComputerInfo | Out-File -FilePath "$home\Desktop\out.txt" -Append
'Dns Client' | Out-File -FilePath "$home\Desktop\out.txt" -Append
Get-DnsClient | Out-File -FilePath "$home\Desktop\out.txt" -Append
'Dns client cache' | Out-File -FilePath "$home\Desktop\out.txt" -Append
Get-DnsClientCache | Out-File -FilePath "$home\Desktop\out.txt" -Append
'Powershell History' | Out-File -FilePath "$home\Desktop\out.txt" -Append
Get-History | Out-File -FilePath "$home\Desktop\out.txt" -Append
'env: variables' | Out-File -FilePath "$home\Desktop\out.txt" -Append
dir env: | Out-File -FilePath "$home\Desktop\out.txt" -Append