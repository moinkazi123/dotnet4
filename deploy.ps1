# Stop the Default Website
Stop-WebAppPool -Name "DefaultAppPool"
Stop-Website -Name "Default Web Site"
#
# # Deploy the application to IIS
New-WebAppPool -Name "HelloWorldAppPool"
New-Website -Name "HelloWorldDotNetFramework" -Port 80 -PhysicalPath "C:\inetpub\wwwroot\HelloWorldDotNetFramework" -ApplicationPool "HelloWorldAppPool"
#
# # Start the website
Start-WebAppPool -Name "HelloWorldAppPool"
Start-Website -Name "HelloWorldDotNetFramework"
#
