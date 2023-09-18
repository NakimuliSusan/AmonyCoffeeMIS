# build image for the development image -- Development version
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build-env
#the working directory which is app that will contain all source code that create a new image
WORKDIR /app

# port 80 will expose http
EXPOSE 80
#port 443 will expose https
EXPOSE 443

#copy the csproj file into the working directory
COPY *.csproj ./
RUN dotnet restore

#copy everything from my local files to the container
COPY . ./

# creating a new folder out after
RUN dotnet publish -c Release -o out

# Build runtime image 
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build-env /app/out .
# Copy the data.db file from the host's root directory into the container
COPY /Data.db .  
ENTRYPOINT ["dotnet", "AmonyCoffeeMIS.dll"]
