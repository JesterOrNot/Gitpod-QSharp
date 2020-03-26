FROM gitpod/workspace-dotnet

USER gitpod

RUN pip3 install qsharp \
    && dotnet tool install -g Microsoft.Quantum.IQSharp \
    && dotnet-iqsharp install
