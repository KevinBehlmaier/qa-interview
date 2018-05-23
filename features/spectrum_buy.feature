Feature: Spectrum Buy

Background: For the spectrum buy page
  Given     I am on the Spectrum buy page

  Scenario: Testing that the Spectrum Buy page works correctly
    When    I only fill out address and hit continue
    Then    I should get the error message for zip code
