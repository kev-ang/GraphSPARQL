FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
COPY bin/Release/netcoreapp3.1/publish/ App/
COPY configuration/ App/configuration/
WORKDIR /App
ENTRYPOINT ["dotnet", "GraphSPARQL.dll"]