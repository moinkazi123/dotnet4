# Define the source and destination paths
$sourcePath = "C:\Users\Administrator\Desktop\dotnet-custom-action\source\HelloWorldDotNetFramework\bin\Release\HelloWorldDotNetFramework.exe"
$destinationPath = "C:\app\HelloWorldDotNetFramework\"

# Copy the executable to the desired folder
Write-Output "Copying executable to destination folder..."
Copy-Item -Path $sourcePath -Destination $destinationPath -Force

# Start the console application
Write-Output "Starting the application..."
Start-Process -FilePath "$destinationPath\HelloWorldDotNetFramework.exe"

