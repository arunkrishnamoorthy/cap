# Risks & Mitigation Project

In this end-to-end scenario we are going to build a project based on the SAP Tutorial - [Build End-To-End- Based on CAP Node JS and VS Code](https://developers.sap.com/mission.btp-application-cap-e2e.html).

First we start with the Development of CAP Based Service and Then proceed with generation of Fiori Elements Template for generating the UI.

#### Service:

The App is based on Risk Management scenario and we will define the entity for the following to capture the information.

1. Risk
2. Mitigations

The Entity `Risks` will have the following structure.

| Property    | Data Type   | Description                                      |
| ----------- | ----------- | ------------------------------------------------ |
| ID          | UUID        | Auto Computed Unique Identifier                  |
| title       | String(100) | Title (100 Characters)                           |
| priority    | String(5)   | Priority                                         |
| description | String      | Description of Risk                              |
| mitigation  |             | Mitigation is Associated to Entity `Mitigations` |
| impact      | Integer     | Impact Value                                     |
| criticalty  | Integer     | Risk Criticality Code                            |

The Entity `Mitigations` will have the following Structure

| Property    | Data Type | Description                      |
| ----------- | --------- | -------------------------------- |
| ID          | UUID      | Auto Computed Unique Identifier  |
| description | String    | Description of Mitigation        |
| owner       | String    | Responsible person               |
| timeline    | String    | Solution Timeline                |
| risks       |           | One to Many Association to Risks |

The One to Many Association to the Risks represents, one Mitigation can be applied to multiple risks.

#### UI

Following is the end result of the application that we will build as part of this chapter.
