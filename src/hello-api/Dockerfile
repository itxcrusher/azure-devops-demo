# Use the official .NET SDK image for build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copy project and restore dependencies
COPY hello-api.csproj ./
RUN dotnet restore

# Copy the rest of the source
COPY . ./
RUN dotnet publish -c Release -o out

# Use the ASP.NET runtime image for running the app
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app
COPY --from=build /app/out ./

# Set Kestrel to bind to port 80
ENV ASPNETCORE_URLS=http://+:80

# Expose default HTTP port
EXPOSE 80
ENTRYPOINT ["dotnet", "hello-api.dll"]
