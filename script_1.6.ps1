[cmdletbinding()]
param
(
    [parameter(mandatory = $true, helpmessage = "Enter the mask")]
    [IPAddress]$mask = "255.192.0.0",

    [parameter(mandatory = $true, helpmessage = "Enter the ip_1")]
    [IPAddress]$ip_1 = "143.29.130.51",

    [parameter(mandatory = $true, helpmessage = "Enter the ip2")]
    [IPAddress]$ip_2 = "10.1.5.2"

)

[IPAddress]$network_ip = ($ip_1.Address -band $mask.Address)
[IPAddress]$network_ip2 = ($ip_2.Address -band $mask.Address)

if($network_ip -eq $network_ip2)
    {
        Write-Host "the ip-addresses are in the same network"
        write-host "network 1: $network_ip"
    }
else
    {
        Write-Host "the ip-addresses are in the different networks"
        write-host "network 1: $network_ip`t network 2: $network_ip2"
    }

