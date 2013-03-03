Feature: Merge Articles
  As a blog administrator
  In order to organize my blog, and do some SEO voodoo
  I want to be able to merge similar articles

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot merge two articles
    Given I am not logged in as an admin
    And I am on the admin page
    Then I should not see "Merge"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am logged into the admin panel
    And there exists an article "Foobar" with content "Lorem Ipsum"
    And there exists an article "Foobaz" with content "Uber Alles"
    And I do be visiting the edit page for the article "Foobar"
    And I fill in "merge_with" with the id for the article "Foobaz"
    And I press "Merge"
    And I do be visiting the view page for the article "Foobar"
    Then I should see "Lorem Ipsum"
    And I should see "Uber Alles"
    


