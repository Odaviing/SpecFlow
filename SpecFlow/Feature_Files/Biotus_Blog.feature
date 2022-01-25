Feature: Reading the articles in the blog
As a user
I want to read articles in the blog
In order to improve my knowledge in pharmacology

As a user
I want to filter the articles by categories
In order to find a most interesting articles for me

As a user
I want to load more articles on the same page
In order to look for another content and don't lose the previous articles

Background:
	Given user is on the homepage
	When user clicks on "Блог" link

Scenario: Choose the article in the blog
	Then user is o the blog page
	When user clicks on the first article on the page
	Then user is on the page of the chosen article

Scenario: Find the article in the "Витамины" category
	Then user is o the blog page
	When user clicks on the "Витамины' category button
	Then user is on the page with the articles from the chosen category
	When user clicks on the first article on the page
	Then user is on the page of the chosen article

Scenario: Load more articles on the blog page
	Then user is o the blog page
	When user clicks on the "Показати ще" button
	Then user sees more articles being loaded on the current page