
begin require 'rspec/expectations'; rescue LoadError; require 'spec/expectations'; end 
$:.unshift(File.dirname(__FILE__) + '/../../')
require "mapkata"


Given /^I have a (\d+)x(\d+) map$/ do |x, y|
  @map = Mapkata.new
  @map.x = x.to_i
  @map.y = y.to_i
end

Given /^I have a map$/ do
  @map = Mapkata.new
  @map.x = 1
  @map.y = 1
end

When /^I move from (\d+),(\d+) with radius (\d+)$/ do |x, y, radius|
  @map.move_from(x.to_i, y.to_i, radius.to_i)
end

Then /^square (\d+),(\d+) should be marked$/ do |x, y|
  @map.square_marked?(x.to_i,y.to_i).should == true
end

Then /^(\d+) square(.*) should be marked$/ do |count,multiplesquares|
  @map.squares_marked.should  == count.to_i
end

Given /^it has a hazard at (\d+),(\d+)$/ do |x, y|
 @map.add_hazard(x.to_i, y.to_i)
end