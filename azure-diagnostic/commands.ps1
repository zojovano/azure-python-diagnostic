docker image build --pull --file "C:\Users\zojovano\source\zojovano\azure-diagnostic\azure-diagnostic/Dockerfile" --tag "azurediagnostic:latest" --label "com.microsoft.created-by=visual-studio-code" "C:\Users\zojovano\source\zojovano\azure-diagnostic\azure-diagnostic"
docker container run --detach --tty --name "azurediagnostic-dev" --publish-all --mount "type=bind,source=c:\Users\zojovano\.vscode\extensions\ms-python.python-2024.3.10681011\python_files\lib\python\debugpy,destination=/debugpy,readonly" --label "com.microsoft.created-by=visual-studio-code" --entrypoint "python3" azurediagnostic:latest