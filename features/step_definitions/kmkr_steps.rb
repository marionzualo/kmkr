Then(/^a file with a "([^"]*)" extension and today's date(?: with format "([^"]*)")?(?: with suffix "([^"]*)")? should exist(?: within "([^"]*)")?/) do |extension, date_format, suffix, directory|
  step "the file named \"#{filename(extension, date_format || "%d-%m-%Y", suffix || "", directory)}\" should exist"
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

def filename(extension, date_format = '%d-%m-%Y', suffix = '', directory = nil)
  today = Date.today.strftime(date_format)
  filename = "#{today}#{suffix}.#{extension}"

  if directory
    filename.prepend("#{directory}/")
  else
    filename
  end
end
