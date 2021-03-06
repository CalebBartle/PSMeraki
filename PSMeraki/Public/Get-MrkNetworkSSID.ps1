function Get-MrkNetworkSSID {
    <#
    .SYNOPSIS
    Retrieves all Meraki SSIDs on a Meraki network
    .DESCRIPTION
    Gets a list of all Meraki SSIDs on a Meraki network.
    .EXAMPLE
    Get-MrkNetworkSSID -networkId X_112233445566778899
    .PARAMETER networkId
    specify a networkId, find an id using get-MrkNetworks
    #>
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory)][ValidateNotNullOrEmpty()][String]$networkId
    )
    if ($mrkApiVersion -eq 'v0'){
        Invoke-MrkRestMethod -Method GET -ResourceID "/networks/$networkId/ssids"
    } Else { #mrkApiVersion v1
        Write-Host This API call is no longer supported in REST API version v1 -ForegroundColor Yellow
    }  
}