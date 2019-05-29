# ESX Documents


## Introduction
Introducing Documents, a great roleplaying addition script for fivem servers using the esx framework. This script provides creation, signing, copying and displaying of documents to enrich players' roleplaying experience. Basically you have two type of documents:
* Public documents 

  * Affirmation form
  * Witness testimony
  * Vehicle convey statement
  * Debt statement towards citizen
  * Debt clearance decleration

  These are accessible by everyone and are mostly documents required by services or other jobs to be filled and signed by you for some purpose.
  
* Job specific documents

  * [police] Special parking permit
  * [police] Gun permit
  * [police] Clean citizen criminal record
  * [ambulance] Medical report - pathology
  * [ambulance] Medical report - psychology
  * [ambulance] Medical report - eye specialist
  * [ambulance] Marijuana use permit
  * [avocat - lawyer] Legal services contract

  These are documents available only to assigned jobs and consist of documents that need to be filled and signed by people working that specific job. Examples are licenses, reports, permits 

## Features
The following document functions are available
* Create
* Sign
* Show
* Give Copy
* Delete
* Public documents
* Job specific documents
* Custom documents creation
* Localization (gr/en)
  
## Requirements
* ESX framework

## Download & Installation

### Using Git
```
cd resources
git clone https://github.com/apoiat/ESX_Documents [esx]/esx_documents
```

### Manually
Download https://github.com/apoiat/ESX_Documents/archive/master.zip
Put it in the `[esx]` directory

## Installation
Import `esx_documents.sql` in your database

Add this in your server.cfg :

```
start esx_documents
```

## How to use
Unless specified otherwise (in the config file) the hotkey assigned for the documents menu is "L". Releasing it will open up the main menu. From there you can chose to access publicly available documents, job-specific documents or your saved documents. The menu is pretty straightforward. This script comes with some common premade forms for you but if you want to create your own check out the following section.

## How to create your own document.
