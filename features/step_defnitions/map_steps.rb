require "mapkata"

Given /^I have a (\d+)x(\d+) map$/ do |x, y|
  @map = Mapkata.new
  @map.x = x
  @map.y = y
end

Given /^I have a map$/ do ||
  @map = Mapkata.new
  @map.x = 1
  @map.y = 1
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

Then /^(\d+) square(.*) should be marked$/ do |count|
	pending
end

