SET BasePath=D:\Projects\LanguageServer.NET

pushd .

cd %BasePath%
call git add -A
call git clean -fxd
call dotnet clean
call dotnet restore
call dotnet build %BasePath%\DemoLanguageServer\DemoLanguageServer.csproj
call code .

cd %BasePath%\Client\VsCode
call npm install
call code .

popd
