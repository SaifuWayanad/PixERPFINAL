# Use the official ASP.NET runtime as a parent image
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 83
EXPOSE 443

# Use the official build image as a parent image
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

# Copy the published application into the container
COPY . /app
WORKDIR /app

# Run the application
ENTRYPOINT ["dotnet", "Pixamaze_ERP_Solution.dll"]
