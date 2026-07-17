FROM mcr.microsoft.com/dotnet/sdk:8.0

# Install EF Core CLI globally so postCreateCommand can apply migrations
RUN dotnet tool install --global dotnet-ef \
    && echo 'export PATH="$PATH:/root/.dotnet/tools"' >> /root/.bashrc

# Add dotnet tools to PATH for non-interactive shells as well
ENV PATH="${PATH}:/root/.dotnet/tools"

WORKDIR /workspace

EXPOSE 8080
EXPOSE 8081

# Keep the container alive — VS Code / docker-compose will attach to it
CMD ["sleep", "infinity"]