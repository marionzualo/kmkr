Then(/^a file with a "([^"]*)" extension and today's date should exist$/) do |extension|
  today = Date.today.strftime("%d-%m-%Y")
  filename = "#{today}.#{extension}"
  step "the file named \"#{filename}\" should exist"
end

