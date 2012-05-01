# language: en
Feature: map kata
	to be able to figure out what squares we can access on a map

Scenario: We have a map and a starting position
	Given I have a map
	When I move from 0,0 with radius 0
	Then square 0,0 should be marked
	And 1 square should be marked

Scenario: Move 1 square
	Given I have a 3x3 map
	When I move from 0,0 with radius 1
	Then square 0,0 should be marked
	And square 0,1 should be marked
	And square 1,0 should be marked
	And 3 squares should be marked