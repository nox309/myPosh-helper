<#
.NAME
    PS Data Template
.SYNOPSIS
    Short description what does the script exactly.
.DESCRIPTION
    Detailed description of the script, with everything that belongs to it
.FUNCTIONALITY
    how does the script work
.NOTES
    Author: nox309
    Email: support@inselmann.it
    Git: https://github.com/nox309
    Version: 1.0
    DateCreated: 2022/05/01
.EXAMPLE
    Get-Something -UserPrincipalName "username@thesysadminchannel.com"
.LINK
    https://github.com/nox309/Projekt-Template/
#>

#---------------------------------------------------------[Initialisations]--------------------------------------------------------

#---------------------------------------------------------[Config]-----------------------------------------------------------------

#---------------------------------------------------------[Functions]--------------------------------------------------------------

function Send-Greeting
{
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [string] $Name
    )

    Begin {                                                             #Wird einmal am anfang ausgeführt bei Verwendung von Pipeline
    $date = Get-Date -Format "dd.MM.yyyy HH:mm"
    Add-Content -Path C:\Temp\log.txt `
    -Value "Send-Greeting wird von $env:username am $date ausgeführt."
    }

    Process                                                             #Wird mehrfach ausgeführt bei Verwendung von Pipeline
    {
        Write-Host ("Hello " + $Name + "!")
    }

    End {                                                                #Wird am ende einmalig ausgeführ bei Verwendung von Pipeline
    Add-Content -Path C:\Temp\log.txt `
    -Value "Ende um $(Get-Date -Format "dd.MM.yyyy HH:mm") von $env:username."
    }
}

#---------------------------------------------------------[Logic]-------------------------------------------------------------------
