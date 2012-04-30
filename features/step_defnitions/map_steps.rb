require "mapkata"

Given /^I have a (\d+)x(\d+) map$/ do |x, y|
  @map = Mapkata.new
  @map.x = x
  @map.y = y
end

When /^I move from (\d+),(\d+) with radius (\d+)$/ do |x, y, radius|
  pending # express the regexp above with the code you wish you had
end

Then /^square (\d+),(\d+) should be marked$/ do |x, y|
  pending # express the regexp above with the code you wish you had
end

Then /^no other squares should be marked$/ do
  pending # express the regexp above with the code you wish you had
end
