Then(/^a file with a "([^"]*)" extension and today's date should exist$/) do |extension|
  step "the file named \"#{filename(extension)}\" should exist"
end

Given(/^a file with a "([^"]*)" extension and today's date exists with content "([^"]*)"$/) do |extension, content|
  steps %Q{
   Given a file named "#{filename(extension)}" with:
     """
     #{content}
     """
  }
end

Then(/^the file with a "([^"]*)" extension and today's date sould have content "([^"]*)"$/) do |extension, content|
  step "the file \"#{filename(extension)}\" should contain \"#{content}\""
end

def filename(extension)
  today = Date.today.strftime("%d-%m-%Y")
  filename = "#{today}.#{extension}"
end
