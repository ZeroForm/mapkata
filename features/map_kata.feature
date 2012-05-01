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

Scenario: Middle Test
  Given I have a 6x6 map
  When I move from 2,2 with radius 2
  Then square 2,2 should be marked
  And square 0,2 should be marked
  And square 1,1 should be marked
  And square 1,2 should be marked
  And square 1,3 should be marked
  And square 2,0 should be marked
  And square 2,1 should be marked
  And square 2,2 should be marked
  And square 2,3 should be marked
  And square 3,1 should be marked
  And square 3,2 should be marked
  And square 3,3 should be marked
  And square 4,2 should be marked
  And 13 squares should be marked

Scenario: Hazard Test
  Given I have a 6x6 map
  And it has a hazard at 2,0
  When I move from 0,0 with radius 5
  Then square 0,0 should be marked
  And 18 squares should be marked
  And square 0,1 should be marked
  And square 0,2 should be marked
  And square 0,3 should be marked
  And square 0,4 should be marked
  And square 0,5 should be marked
  And square 1,0 should be marked
  And square 1,1 should be marked
  And square 1,2 should be marked
  And square 1,3 should be marked
  And square 1,4 should be marked
  And square 2,1 should be marked
  And square 2,2 should be marked
  And square 2,3 should be marked
  And square 3,0 should be marked
  And square 3,1 should be marked
  And square 3,2 should be marked
  And square 4,1 should be marked
  

Scenario: Large Test
  Given I have a 10x10 map
  When I move from 0,0 with radius 9003
  Then 100 squares should be marked

  Scenario: Super Large Test
  Given I have a 100x100 map
  When I move from 0,0 with radius 1000
  Then 10000 squares should be marked

Scenario: Super Large Test w/ hazard
  Given I have a 100x100 map
  And it has a hazard at 0,1
  When I move from 0,0 with radius 1000
  Then 9999 squares should be marked