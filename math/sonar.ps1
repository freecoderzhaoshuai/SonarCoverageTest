dotnet test Math.Test/Math.Test.csproj /p:CollectCoverage=true /p:CoverletOutputFormat=opencover
dotnet build-server shutdown
dotnet sonarscanner begin /k:"sonardotnetcoveragetest" /d:sonar.host.url="http://172.29.21.211" /d:sonar.login="6cb73b36f9fc21f7d58948fb09f833f28dcab9ec" /d:sonar.cs.opencover.reportsPaths=Math.Test/coverage.opencover.xml  /d:sonar.coverage.exclusions="**Test*.cs"
dotnet build
dotnet sonarscanner end /d:sonar.login="6cb73b36f9fc21f7d58948fb09f833f28dcab9ec"

dotnet add package coverlet.msbuild — version 2.0.1
dotnet add package FluentAssertions — version 5.0.

dotnet sonarscanner begin /k:"Saturn.Api" /d:sonar.host.url="http://172.29.21.211" /d:sonar.login="7c4684c6e3876131eadc04f3695093e1a7aa0437" /d:sonar.cs.opencover.reportsPaths=Saturn.Tests/coverage.opencover.xml  /d:sonar.coverage.exclusions="**Test*.cs"