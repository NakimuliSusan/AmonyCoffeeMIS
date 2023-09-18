# AmonyCoffee

## Introduction
AmonyCoffeeMIS is  a Management Information System that is sought to help Emata Uganda Limited's  fictitious client named Amony
Farmers' Cooperative (AFC) has insights into the performance of the farmers and their businesses.



# Instructions

Languages used: C#

Web framework: .NET 7

To run this project, do the following:

Download .NET 7 SDK here - https://dotnet.microsoft.com/en-us/download/dotnet/7.0

Run the installer and in the terminal run: 

```dotnet --version```

Output should show the dotnet version installed



Within VS code terminal, run the following commands:

Build the app:

```dotnet build```

Install certs required for the app to run:

```dotnet dev-certs https --trust```

NB: After running this command, reopen your browser


Run the app: 

```dotnet run```

Access the application on this URL: https://localhost:7208/

To run the application with  docker 
## Prerequisites
Ensure you have the following tools installed on your development machine:
- Docker: [Install Docker]
```sh
(https://docs.docker.com/get-docker/)
```
Ensure to check the version of docker installed 
``` sh
docker --version
```
Ensure to install docker-compose into your local machine 
``` sh
https://docs.docker.com/compose/install/
```
Build the Docker containers for the application and check the version to ensure its installed:
``` sh
docker-compose build
```
Start the application:

``` sh
docker-compose up -d
```
To stop the application and the database containers
```sh
docker-compose down
```
Access the application over this url (http://localhost:8080).




