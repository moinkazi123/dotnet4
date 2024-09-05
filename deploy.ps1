# Copy the executable to the desired folder
Copy-Item -Path "C:\path-to-source\HelloWorldDotNetFramework.exe" -Destination "C:\app\HelloWorldDotNetFramework\" -Force

# Optional: If your console app requires additional dependencies or configuration files, you can copy them here as well.
# Example:
# Copy-Item -Path "C:\path-to-source\*.config" -Destination "C:\app\HelloWorldDotNetFramework\" -Force

# Start the console application
Start-Process -FilePath "C:\app\HelloWorldDotNetFramework\HelloWorldDotNetFramework.exe"

# Optionally, you can run the console application as a background process or service, depending on your requirements.
