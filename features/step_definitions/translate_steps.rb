# coding: UTF-8
# Put your step definitions here



Given(/^I'm on "(.*)" page$/) do |translate_web|
  visit translate_web
end

When(/^I type "([^"]*)" in the left case$/) do |original_text|
  find(:id, "source").set original_text #Enter original text
end

And(/^I choose "([^"]*)" and "([^"]*)"$/) do |original_lang, translate_lang|

  case original_lang
    when "русский"
      find(:xpath, ".//*[@id='gt-sl-sugg']/div[2]").click #Choose language of original text
    when 'английский'
      find(:xpath, ".//*[@id='gt-sl-sugg']/div[1]").click #Choose language of original text
    when 'немецкий'
      find(:xpath, ".//*[@id='gt-sl-sugg']/div[3]").click #Choose language of original text
  end


  case translate_lang
    when 'русский'
      find(:xpath, ".//*[@id='gt-tl-sugg']/div[1]").click #Choose language of result text
    when 'английский'
      find(:xpath, ".//*[@id='gt-tl-sugg']/div[2]").click #Choose language of result text
    when 'немецкий'
      find(:xpath, ".//*[@id=':3z']/div").click #Choose language of result text
  end
end

And(/^I click on the translate button$/) do
  find(:xpath, ".//*[@id='gt-submit']").click    #Click translate button
end

Then(/^I should see "([^"]*)" in the right case$/) do |result_text|
  if result_text == find(:id, "result_box").text
    puts ("Test #1 Success")
  end
end



When(/^I type "([^"]*)"  in the left case$/) do |original_text|
  find(:id, "source").set original_text #Enter original text
end

And(/^I choose russian original language and english translate language$/) do
  find(:xpath, ".//*[@id='gt-sl-sugg']/div[2]").click #Choose language of original text
  find(:xpath, ".//*[@id='gt-tl-sugg']/div[2]").click #Choose language of result text
end

Then(/^I should see  "([^"]*)" and "([^"]*)" words in the right case$/) do |arg1, arg2|
  if (find(:id, "result_box").text.scan(arg1).size==1) and (find(:id, "result_box").text.scan(arg2).size==1)
    puts ("Test #2 Success")
  end
end

When(/^I choose load from file link under the left case$/) do
  find(:xpath, ".//*[@id='select_document']/a").click    #Click Load from file
end


And(/^add text file$/) do
  #find(:xpath, " .//*[@id='file']").file
  pending
 end

Then(/^I should see translated text from file$/) do
  pending
end