#!/bin/bash
NAMESPACE="${namespace:=cbContract}"
echo "generating contract classes `${NAMESPACE}`"

mkdir ${NAMESPACE}
cd ${NAMESPACE}

cp -r /abi .

dotnet new classLib 
dotnet add package Nethereum.Web3
/root/.dotnet/tools/Nethereum.Generator.Console generate from-project

echo "code generation is complete. Copying files"

rm -rf obj
rm Class1.cs
rm -rf abi
rm ${NAMESPACE}.csproj

cd ..
cp -r ${NAMESPACE} /out
