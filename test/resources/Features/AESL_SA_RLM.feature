Feature: AESL_Super_Admin_Role_Management

  //Test Cases for US_01 - Roles Listing and Associated Actions

  @TC_01
  Scenario: Access Roles Listing with View Permission
    Given the user has View permission for "Roles Management" module
    When the user accesses the "Roles Management" module
    Then the Roles List should be displayed as per design

  @TC_02
  Scenario: Verify Role Count Display
    Given the user is on the Roles Management page
    Then the total count of roles should be visible in the header

  @TC_03
  Scenario: Default Roles Display
    Given the user is on the Roles List page
    Then default roles like Super Admin, Configurator Admin, etc. should be visible
    And cannot be edited

  @TC_04
  Scenario: System and Custom Role Color Coding
    Given the user is on the Roles List page
    Then system roles and custom roles should be displayed with specific color coding

  @TC_05
  Scenario: Edit Custom Role Names
    Given the user has Edit permission for "Roles Management" module
    When the user clicks "Edit" on a custom role name
    Then the role name should open in edit mode

  @TC_06
  Scenario: Activate/Deactivate Custom Role
    Given the user clicks "Activate/Deactivate" on a custom role
    Then a confirmation popup should appear

 @////////////////////***********************************//////////////////****************/////////////////////////////////


 @Test_Cases_for_US_02_Create_New_Custom_Role


 @///////////////////////////******************************///////////////////************************/////////////////////////

  @TC_07
  Scenario: Access Create Custom Role
    Given the user has Edit permission for "Roles Management" module
    When the user accesses the "Roles Management" module
    Then the "Create Custom Role" button should be displayed

  @TC_08
  Scenario: Open Create Custom Role Form
    Given the user clicks on the "Create Custom Role" button
    Then a form page should open to enter custom role details


  @TC_09
  Scenario: Role Name Uniqueness
    Given the user is creating a new custom role
    When a name that already exists is entered
    Then an error message should appear

  @TC_10
  Scenario: Permissions Uniqueness
    Given the user is creating a new custom role
    When the permission selection matches another role exactly
    Then an error message should appear

  @TC_11
  Scenario: At Least One Permission Required
    Given the user is creating a new custom role
    When no permissions are selected
    Then an error message should prompt the user to select at least one permission

  @TC_12
  Scenario: Successful Role Creation
    Given the user has filled in valid data and selected permissions
    When the user clicks "Save"
    Then a confirmation message should appear, and user should be redirected to "View Roles" upon clicking the button on the confirmation popup
