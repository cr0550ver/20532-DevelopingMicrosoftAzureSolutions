Configuration ConfigureDev
{
  Import-DscResource -ModuleName xSystemSecurity
  Node ("localhost")
  {
    xIEESc DscIE
    {
      UserRole = "Administrators"
      IsEnabled = $false
    }
    xIEESc DscIE
    {
      UserRole = "Users"
      IsEnabled = $false
    }
  }
}
