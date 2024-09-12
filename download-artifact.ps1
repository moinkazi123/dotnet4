# Define the S3 bucket and object key
$bucketName = "codepipeline-ap-south-1-255966877743"
$objectKey = "dotnet-custom-build/BuildArtif/HelloWorldDotNetFramework.exe"
$destinationPath = "C:\Users\Administrator\Desktop\dotnet-custom-action\source\HelloWorldDotNetFramework\bin\Release\HelloWorldDotNetFramework.exe"

# Download the file from S3
Write-Output "Downloading build artifact from S3..."
aws s3 cp "s3://$bucketName/$objectKey" $destinationPath
