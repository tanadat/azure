configuration ConfigureAspNet
{
### Specify parameters like this (This time, not needed)
#  param
#  (
#    [Parameter(Mandatory)]
#    [String]$MyParam01
#  )

### Specify additional DSC resource (This time, not needed)
#  Import-DscResource -ModuleName xMyCustomResource01, xMyCustomResource02

  Node localhost
  {
    ### Install IIS
    WindowsFeature IIS
    {
      Name = "Web-Server"
      Ensure = "Present"
    }

    ### Install ASP.NET 4.5
    WindowsFeature AspNet45
    {
      Name = "Web-Asp-Net45"
      Ensure = "Present"
    }

    ### When using custom resource
    #xMyCustomResource01 MySetup01
    #{
    #  XXX = YYY
    #  . . .
    #}

  }
}