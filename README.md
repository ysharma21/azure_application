1. Create virtual environment.

```python3 -m venv .env ```

2. Press Ctrl+shift+P in visual studio code.

3. Select Python interpretor and the virtual environment .env created above.

4. Open a new terminal for virtual environment to be activated.

5. Install python packages

    ```python -m pip install flask_restful faker```

6. Create a .gitignore file and add following to avoid checking in the virtual environment file.

```.env/```

7. set POWERSHELL_TELEMETRY_OPTOUT=1
pwsh.exe -File .\infra\deploy.ps1

8. To find principalid, got to azure active directory and find the user. Under ovreview, the objectid is the principalid. Principalid is needed in main.parameters.json uner infra
see https://ms.portal.azure.com/#view/Microsoft_AAD_UsersAndTenants/UserProfileMenuBlade/~/overview/userId/ 

9. https://learn.microsoft.com/en-us/azure/role-based-access-control/role-assignments-list-cli for managed identity. https://learn.microsoft.com/en-us/azure/active-directory/managed-identities-azure-resources/managed-identity-best-practice-recommendations

10. For bicep templates
https://learn.microsoft.com/en-us/azure/app-service/samples-bicep

11. For ARM templates:
https://github.com/Azure/azure-quickstart-templates/tree/master/quickstarts/microsoft.web/webapp-basic-linux

12. Python flask app: https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.web/web-app-python/gettingstarted.md

13. Deployment from CLI
https://learn.microsoft.com/en-us/azure/app-service/quickstart-python?tabs=flask%2Cwindows%2Cazure-cli%2Cvscode-deploy%2Cdeploy-instructions-azportal%2Cterminal-bash%2Cdeploy-instructions-zip-azcli






