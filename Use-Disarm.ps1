function Use-Disarm {
    <#
    .SYNOPSIS
        Disarms links to prevent accidental clickage
    .DESCRIPTION
        Changes http to hXXp and . to [.]
    .PARAMETER Group
        URL
    .EXAMPLE
        use-disarm http://www.google.com     --> hXXp://www[.]google[.]com
    .NOTES
        Version 2018.10.12
        By David Reed, @ReedTechno
        
        https://github.com/Reedtechno/misc/blob/master/Use-Disarm.ps1
    #>

    [CmdletBinding()]
    [OutputType([string])]
    param
    (
        [Parameter(Mandatory = $true)]
        [string]$url
   )
    #Change HTTP to HXXP
    $url = $url.Replace("http" , "hXXp")

    #Put [] around periods
    $url = $url.Replace("." , "[.]")
    
    $url
}

