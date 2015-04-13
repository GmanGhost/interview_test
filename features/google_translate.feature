Feature: Google Translate

  This feature provide us translation between huge amount of languages. It supports
  different types of inputs (text, file, handwritten text, speech). Context meaning
  of word (homophones).

  Create test-plan and describe scenarios below


  Tests below checks that google translate feature is able to translate languages from
  russian/english/german into other language. Also we check that context meaning of the
  words is supported.


  Scenario Outline:
    Given I'm on "<translate_web>" page
    When I type "<original_text>" in the left case
    And I choose "<original_lang>" and "<translate_lang>"
    And I click on the translate button
    Then I should see "<result_text>" in the right case
  Examples:
    | translate_web | original_text | original_lang     | translate_lang     | result_text |
    | http://translate.google.ru/ | Магазин | русский | английский | The Store |
    | http://translate.google.ru/ | Never say never | английский | русский | Никогда не говори никогда |
    | http://translate.google.ru/ | Fallschirm | немецкий | русский | Парашют |



  Scenario:
       Given I'm on "http://translate.google.ru/" page
    When I type "замок разрушен и замок сломан"  in the left case
    And I choose russian original language and english translate language
    Then I should see  "castle" and "lock" words in the right case

# Scenario:
#   Given I'm on "<translate_web>" page
#   When I choose load from file link under the left case
#   And add text file
#   And I click on the translate button
#   Then I should see translated text from file

