# Nethereum.Generator
Docker Container to create C# files from abi and json

# to create C# files

    docker run -v [`ABI PATH`]:/abi --rm  [-e namespace=MyContractNameSpace]  -v [`output path`]:/out newearthart/nethereum.generator

If namespace is omitted it will default to cbContacts 

