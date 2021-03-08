Feature: Insight68 SignIn Screen Feature
  User should be SignIn with valid credentials
  
  

  @ErrorMesagesInSingnInScreen @Insight68
  Scenario: verify the Error messages in SignIn screen
    Given Click on Login Button
    Then Verify Login Name error toast message
    Then Enter invalid Login Name in Login Name text box
    And Click on Login Button
    Then Verify Password error toast message
    Then Enter invalid Password in password text box
    And Click on Login Button
    Then Verify Invalid Login Name or Password error toast message

  @Android_SignIn @Smoke
  Scenario: Verify SignIn functionality of Insight68 Mobile Application
    Given User Enter Login Name in Login Name text box
    Then Enter Password in password text box
    And Click on Login Button
    Then Click on Logout Button
    Then Verify Login screen displaying after Logout