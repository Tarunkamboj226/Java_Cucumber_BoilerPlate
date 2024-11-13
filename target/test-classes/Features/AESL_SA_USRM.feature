Feature: AESL_Super_Admin_User_Management

  //Test Cases for US_01 - User List and Associated Actions

  @TC_01
  Scenario: Launch The App
    Given Launch website
    Then Add username and password
    And Click on login button

  @TC_02
  Scenario: Access User List with View Permission
    Given the user has “View” permission for “User Management”
    When the user navigates to the “User Management” module
    Then the User List page should be displayed

  @TC_03
  Scenario: Auto-Creation of User Record
    Given a new user logs into the system for the first time
    Then a user record should automatically be created in the list, pulling details from Microsoft AD

  @TC_04
  Scenario: Update User Record
    Given a user exists in the list
    When 24 hours have passed
    Then the user information should update from Microsoft AD

  @TC_05
  Scenario: Activate/Deactivate User
    Given a user with “Edit” permission toggles the activate/deactivate button
    Then a confirmation popup should appear, and post-confirmation, the user status should change

  @TC_06
  Scenario: Pagination Options
    Given the user is on the User List page
    When they select a pagination option
    Then the page should display the corresponding number of entries

  @TC_07
  Scenario: Table Search
    Given the user is on the User List page
    When they enter a search term
    Then the results should be filtered based on the search input

  @TC_08
  Scenario: Roles Filter
    Given the user is on the User List page
    When they open the “Roles” filter
    Then a list of all active roles should be visible in checkbox form, with all roles selected by default

  @TC_09
  Scenario: Edit User Record
    Given the user has "Edit" permission for "User Management"
    When they attempt to edit a user record
    Then only the roles should be editable, while other fields remain read-only

  @////////////////////***********************************//////////////////****************/////////////////////////////////

  @Test_Cases_for_US_02_Invite_User

  @////////////////////***********************************//////////////////****************/////////////////////////////////

  @TC_10
  Scenario: Access Invite User with Permission
    Given the user has “Invite User” permission
    When they access the “User Management” module
    Then the “Invite User” button should be visible

  @TC_11
  Scenario: Open Invite User Form
    Given the user is on the User Management page
    When they click “Invite User”
    Then a form page should open to enter user invitation details

  @TC_12
  Scenario: Enter Multiple Emails
    Given the user is on the Invite User form
    When they enter multiple email addresses in the “Email address” field
    Then the system should allow multiple email entries

  @TC_13
  Scenario: Role Selection for Invitation
    Given the user is on the Invite User form
    When they view the role selection table
    Then they should be able to select multiple roles to assign

  @TC14
  Scenario: Duplicate Email Error
    Given an email already exists in the system
    When the user enters this email on the Invite User form
    Then an error message should appear, listing the existing email and redirecting the user back to the form for corrections

  @TC15
  Scenario: Successful Invitation
    Given the user enters valid details on the Invite User form
    When they click “Send Invitation”
    Then a notification should be triggered to each email, and a success message should appear with options to view list or add more

  @TC_16
  Scenario: Reset Form
    Given the user is on the Invite User form
    When they click the “Reset” button
    Then all entered details should be cleared from the form


  @////////////////////***********************************//////////////////****************/////////////////////////////////


  @Test_Cases_for_US_03_Pending_Invites_List_and_Associated_Actions

  @////////////////////***********************************//////////////////****************/////////////////////////////////

  @TC_17
  Scenario: Access Pending Invites with Permission
    Given the user has “Invite User” permission
    When they access the “User Management” module
    Then the “Pending Invites” button should be visible, along with the count of pending invites

  @TC_18
  Scenario: View Pending Invites
    Given the user clicks “Pending Invites”
    Then a list of all users who have not logged in through the invitation link should be displayed

  @TC_19
  Scenario: Removal of User from Pending Invites List after log in
    Given a user is listed in Pending Invites
    When they log in through the invitation link
    Then their record should be removed from the Pending Invites list

  @TC_20
  Scenario: Pagination Options
    Given the user is on the Pending Invites page
    When they select a pagination option
    Then the page should display the corresponding number of entries

  @TC_21
  Scenario: Table Search
    Given the user is on the Pending Invites page
    Then Enter a search term in the table search field (e.g., a partial or full name of an invited user).
    And Press Enter or wait for the search to filter results.
    And Observe the displayed records.



