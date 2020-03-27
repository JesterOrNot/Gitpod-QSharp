FROM gitpod/workspace-dotnet

USER gitpod

RUN pip3 install qsharp \
    && dotnet tool install -g Microsoft.Quantum.IQSharp
# This is done in a new layer because needs to be done in new terminal
RUN bash -cl "dotnet-iqsharp install"
