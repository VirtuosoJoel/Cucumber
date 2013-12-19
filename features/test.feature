Feature: Workbook holds State

Scenario Outline: Set Workbook Name
  Given I have a Workbook named <input_name>
  Then its name should be <output_name>
  Examples:
    | input_name  | output_name |
    | Workbook1   | Workbook1   |
    | my_workbook | my_workbook |
    
Scenario: Populate Workbook with Sheets
  Given I have an empty Workbook
  And I add the sheets Sheet1 Sheet2 Sheet3
  Then I should have 3 sheets
  And they should be called Sheet1 Sheet2 Sheet3