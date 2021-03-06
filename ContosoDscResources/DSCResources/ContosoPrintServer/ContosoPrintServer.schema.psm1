Configuration ContosoPrintServer
{
    Service PrintSpooler
    {
        Name = 'Spooler'
        State = 'Running'
        StartupType = 'Automatic' 
    }
        
    Service ServerService
    {
        Name = 'LanmanServer'
        State = 'Running'
        StartupType = 'Automatic' 
    }
                      
    #Install the Print Server Role
    WindowsFeature PrintServer
    {
        Ensure = “Present”
        Name = “Print-Server”
    }
}
