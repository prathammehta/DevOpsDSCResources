Configuration ContosoWebServer
{
    WindowsFeature IISTest
    {
        Ensure = “Absent”
        Name = “web-server”
    }
}
