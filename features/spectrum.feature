Feature: Spectrum

Background: For the homepage
  Given     I am on the homepage

  Scenario Outline: Testing multiple nav bar items
    Then    I validate multiple <navbar_items>
    Examples:
    |navbar_items     |
    |Shop             |
    |Manage Account   |
    |Support          |

  Scenario Outline: Testing the sub nav bar items
    Then    I validate multiple <sub_nav_bar_items>
    Examples:
    |sub_nav_bar_items  |
    |Packages           |
    |Internet           |
    |Cable TV           |
    |Phone              |
    |Latino             |
    |Business           |

  Scenario Outline: Testing the functionality of navbar and sub navbar
    When    I click on the <all_nav_bar_items>
    Examples:
    |all_nav_bar_items  |
    |Shop               |
    |Manage Account     |
    |Support            |
    |Packages           |
    |Internet           |
    |Cable TV           |
    |Phone              |
    |Latino             |
    |Business           |


  Scenario: Testing price a service feature
    Given   I am on the homepage
    When    I can locate the price a service form
    Then    I can fill out the price a service form
    And     I can submit the form
