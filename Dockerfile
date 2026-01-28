# Use the official ASP.NET runtime image as the base image
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 50051
ENV ASPNETCORE_URLS http://*:50051

# Copy the published files from the host machine's publish folder to the container
COPY ./publish /app

# Set the entry point for the application
ENTRYPOINT ["dotnet", "GrpcService1.dll"]



