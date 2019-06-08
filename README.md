<div align="center">

# ESX Documents

<img src="https://i.ibb.co/HtCtSgx/esx-documents.png" width="100%">

[![npm version](https://img.shields.io/github/release/apoiat/ESX_Documents.svg?style=flat)](https://github.com/apoiat/ESX_Deliveries "View this project on npm")  [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
____

</div>


## Introduction
Introducing Documents, a great roleplaying addition script for fivem servers using the esx framework. <b>This script provides creation, signing, copying and displaying of documents to enrich players' roleplaying experience</b>. Basically you have two type of documents:
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
* Localization (gr/en/br/de)

## Requirements
* ESX framework

## Download & Installation
> <b>Important note:</b>
Make sure your resource folder name is esx_documents. Anything else will make the script malfunction.

### Using Git
```
cd resources
git clone https://github.com/apoiat/ESX_Documents [esx]/esx_documents
```

### Manually
Download https://github.com/apoiat/ESX_Documents/archive/master.zip

Rename folder to esx_documents

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
Each document is assigned to a specific category. This category can be <b>public</b> for everyone or a <b>job name</b> to be accessible only by citizens in that specific job.
Each document consists of a <b>headerTitle</b>, <b>headerSubtitle</b> and <b>elements</b>.
headerTitle and headerSubtitle are self explanatory.
Elements are the fields which a user fills in, in a document.
An element, so far, can either be <b>input</b> or <b>textarea</b>.
Each element has the following properties:
* <b>can_be_empty</b> : true/false which means a user can submit the form without filling that specific element
* <b>can_be_edited</b> : true/false which means a user can edit this element's content. Usefull for documents with static values.

So let's see an example. Let's say we want to create a witness testimony document. This can be filled by anyone so we put it in the public section. Also we want the citizen to fill in the date of occurence and his testimony. Hence we have:
<table>
<tr>
 <td width="30%"><img src="https://i.ibb.co/kx5G0vy/Untitled.png" width="100%"></td>
 <td width="70%">

  ```
-- We add our document to the public section
-- Click the image on the left to see the code translation
["public] ={
        {
          headerTitle = "WITNESS TESTIMONY",
          headerSubtitle = "Official witness testimony.",
          elements = {
            { label = "DATE", type = "input", value = "", can_be_emtpy = false },
            { label = "TESTIMONY", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        ....
}
```
 </td>
</tr>
</table>

Translations and implementation by [ESX-Brasil]('https://github.com/ESX-Brasil/')

Special thanks to fivem user Max_Muller for providing a German translation.
