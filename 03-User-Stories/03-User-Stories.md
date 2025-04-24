The user stories and project progress tracking are managed using Jira. 

**Project Board (Private Access):**
[HelloBank App Enhancement - Jira Board] (https://grushamehta95.atlassian.net/jira/software/projects/HAE/boards/5)

*Note: Jira board access is restricted to project collaborators.*

## EPIC [HAE-2]: Banking-App-Enhancement-Project
Description: 

Enhancing the existing application of ‘Hello Bank Pty Ltd”. Feature to be included is: the ability to lock/unlock cards using the banking application. 
This epic covers all the stories to implementing card control functionality in HelloBank app. 

## User Stories:

**HAE-1:** - Lock-Card - User Initiated Action

Description-

As a banking app user, I want to lock my debit card so that I can stop unauthorised transactions if my card is lost or stolen. 

Acceptance Criteria:
* User can select a card and choose “Lock”.
* A confirmation message is shown. 
* Card status changes to “Locked” in the system.

**HAE-3:** - Unlock-Card-User Initiated Action

Description-

As a user, I want to unlock my debit/credit card so that I can start using it again once found or recovered. 

Acceptance Criteria:
* Unlock option appears only if card is locked. 
* Confirmation prompt before unlocking.
* Card status changes to ‘Active'.

**HAE-4:** - View-Card-Status

Description-

As a user, I want to be able to view my card status (Active, Locked) so that I know whether I can use my card. 

Acceptance Criteria:
* Card status is displayed on dashboard or on the card detail screen.
* The status must accurately reflect the current backend status.

**HAE-5:** - Receive Notification on Lock/Unlock

Description-

As a user, I want to receive a notification when I lock or unlock my card so I have a record of changes. 

Acceptance Criteria:
* Push/email notification sent after action
* Includes card name, time, and action.

**HAE-6:** - Require authentication before unlocking

Description-

As a user, I want to authenticate before unlocking my card so unauthorised users can’t activate it. 

Acceptance Criteria:
* Prompt for Face ID/Pin before unlocking.
* Locking does not require authorisation.

**HAE-7:** - Handle lock failures

Description-

As a user, I want to be see a clear error if locking the card fails so I know what to do next.

Acceptance Criteria:
* Display retry option.
* Error message to contain next steps.

**HAE-8:** - Show timestamps of last action

Description-

As a user, I want to see when my card was last locked or unlocked so I have a record of changes. 

Acceptance Criteria:
* Timestamp appears on the card detail page.
* Includes both date and time.

**HAE-9:** - Limit lock/unlock to once per hour

Description-

As a system user, I want to limit card locking/unlocking to once per hour to prevent abuse. 

Acceptance Criteria:
* Error shown if user tries to repeat within 1 hour.
* Countdown or next available time shown on the card details page.

**HAE-10:** Lock card automatically after 3 failed attempts

Description-

As a system user, I want to lock card automatically after 3 failed login attempts to prevent unauthorised access.

Acceptance Criteria:
* Card lock triggered on backend.
* Notification sent to the user.  


  






