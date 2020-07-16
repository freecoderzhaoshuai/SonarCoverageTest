dotnet test Math.Test/Math.Test.csproj /p:CollectCoverage=true /p:CoverletOutputFormat=opencover

dotnet sonarscanner begin /k:"sonardotnetcoveragetest" /d:sonar.host.url="http://172.29.21.211" /d:sonar.login="6cb73b36f9fc21f7d58948fb09f833f28dcab9ec"
dotnet build
dotnet sonarscanner end /d:sonar.login="6cb73b36f9fc21f7d58948fb09f833f28dcab9ec"