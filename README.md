# Communities Assets

This repository contains required assets to setup Salesforce communities when using default pages:

-   Authorization Required Page: CommunitiesLogin
-   Bandwidth Exceeded Page: BandwidthExceeded
-   File Not Found Page: FileNotFound
-   Generic Error Page: Exception
-   In Maintenance Page: InMaintenance
-   Index Page: CommunitiesLanding
-   Self Registration Page: CommunitiesSelfReg

The repository content can be installed as an unlocked package before deploying a Community using default assets.

## Installing as an unlocked package

-   Clone the [CommunitiesAssets](https://github.com/RemiLeGuin/CommunitiesAssets) repository to your local machine.
-   Connect to a default org (Sandbox, Trailhead Playground, Scratch Org...) with Dev Hub and Unlocked Packages enabled.
-   Install the communities-assets directory as an unlocked package:
```
sfdx force:package:create --name "Communities Assets" --description "Apex classes, VisualForce pages, Aura components and static resources basic assets to initiate a Community in Salesforce." --packagetype Unlocked --path communities-assets --nonamespace --targetdevhubusername /*targeted org or username*/
```
```
sfdx force:package:version:create --package "Communities Assets" --path communities-assets --installationkey /*password*/ --wait 10 --targetdevhubusername /*targeted org or username*/
```
```
sfdx force:package:install --wait 10 --publishwait 10 --package "Communities Assets@0.1.0-1" --installationkey /*password*/ --noprompt --targetusername /*targeted org or username*/
```

## Using the unlocked package

-   In the sfdx-project.json file of any of your dependant package, add the dependency to the Communities Assets package:
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
          "versionNumber": "0.1.0.LATEST"
        }
      ]
    }
  ],
  "namespace": "",
  "sfdcLoginUrl": "https://login.salesforce.com",
  "sourceApiVersion": "47.0",
  "packageAliases": {
    "Communities Assets": "ID",
    "Your Project": "ID"
  }
}
```