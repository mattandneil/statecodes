<a href="https://githubsfdeploy.herokuapp.com?owner=mattandneil&amp;repo=statecodes&amp;ref=master">
<img align="right" alt="Deploy to Salesforce" src="https://raw.githubusercontent.com/mattandneil/statecodes/master/README1.png">
</a> This tool initializes all ISO states by screen scraping the forms in setup.<br />(State and Country picklist values cannot be created any other way)

# Install

- Install the package: <a href="https://login.salesforce.com/packaging/installPackage.apexp?p0=04t4J000000tIvu">/packaging/installPackage.apexp?p0=04t4J000000tIvu</a>
- Go to Setup > Installed Packages > State Codes, then click **Configure**
- Review the included ISO state codes then click **Start Batch**

<img src="https://raw.githubusercontent.com/mattandneil/statecodes/master/README2.png" />

# Verify

Inspect the State and Country picklist values before, during, and after starting the batch:

<img width="625" src="https://raw.githubusercontent.com/mattandneil/statecodes/master/README3.png" />
<img width="625" src="https://raw.githubusercontent.com/mattandneil/statecodes/master/README4.png" />

# Modify

After the package creates all the state codes and state names, the values must be permanently activated using Workbench or an IDE connected to the org. Follow these steps in sandbox before attempting in production:

1. Install the package in sandbox, not production
2. Go to Installed Packages > Configure > Run Batch
3. Use any text editor to create a package.xml file:
    ```
    <?xml version="1.0" encoding="UTF-8"?>
    <Package>
        <types>
            <members>Address</members>
            <name>Settings</name>
        </types>
        <version>45.0</version>
    </Package>
    ```
3. In Workbench, go to Migration > Retrieve, use package.xml
4. Download the result and unzip its contents into a new folder
5. Open the Address.settings file in your text editor
6. Replace all `<active>false</active>` with `<active>true</active>`
7. Replace all `<visible>false</visible>` with `<visible>true</visible>`
8. Save changes, then zip up the exact contents of the folder again
9. In Workbench, go to Migration > Deploy, and deploy the new zip file

While we can't provide ad-hoc support for this code, please contact us with your company<br/>name and address if you need a warranty for its use and we will assist: [www.xbaf.com/contact](https://www.xbaf.com/contact)
