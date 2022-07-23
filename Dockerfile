FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build-env

# load the tools and preload Nethereum.Web3
RUN dotnet tool install -g Nethereum.Generator.Console && \
    export PATH="$PATH:/root/.dotnet/tools" && \
    mkdir /dummy && cd /dummy && dotnet new classLib && dotnet add package Nethereum.Web3

COPY ./generate.sh /generate.sh

ENTRYPOINT ["bash","/generate.sh"]

