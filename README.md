# Communities Assets

This repository contains required assets to setup Salesforce communities when using default pages. Its content can be installed as an unlocked package before deploying a Community using default assets.

## Installing as an unlocked package

-   [Follow this link for Sandboxes](https://test.salesforce.com/packaging/installPackage.apexp?p0=04tB0000000Oiq0IAC "https://test.salesforce.com/packaging/installPackage.apexp?p0=04tB0000000Oiq0IAC")
-   [Follow this link for Production environments, Developer Editions and Trailhead Playgrounds](https://login.salesforce.com/packaging/installPackage.apexp?p0=04tB0000000Oiq0IAC "https://login.salesforce.com/packaging/installPackage.apexp?p0=04tB0000000Oiq0IAC")

## Using the unlocked package

In the sfdx-project.json file of any of your dependant package, add the dependency to the Communities Assets package:

```
{
  "packageDirectories": [
    {
      "path": "your-project",
      "package": "Your Project",
      "versionName": "ver 0.1",
      "versionNumber": "0.1.0.NEXT",
      "default": true,
      "dependencies": [
        {
          "package": "Communities Assets",
          "versionNumber": "1.0.0.LATEST"
        }
      ]
    }
  ],
  "namespace": "",
  "sfdcLoginUrl": "https://login.salesforce.com",
  "sourceApiVersion": "48.0",
  "packageAliases": {
    "Communities Assets": "0HoB0000000Cb0iKAC",
    "Communities Assets@1.0.0-1": "04tB0000000Oiq0IAC",
    "Your Project": "ID"
  }
}
```