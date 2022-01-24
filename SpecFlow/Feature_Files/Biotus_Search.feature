Feature: Search the medicine
As a user
I want to find a medicine via search field
In order to find a specific product

As a user
I want to choose a category
In order to search a medicine in chosen category

As a user
I want to find medicine using filters
In order to search a medicine with a different requirements

Background:
	Given user is on the homepage

Scenario: Find a vitamin B6 via search field
	When user clicks on search field
	And user enters the search query "Витамин B6" in the search field
	And user clicks Enter on the keyboard
	Then user is on the search result page
	When user clicks on the first vitamin in the result page
	Then user is on the page with the information about chosen product


Scenario: Find all products in "Вітаміни від стресу" category
	When user clicks on the "Category" drop-down menu
	And user clicks on the "Вітаміни за симптомами" category
	Then user is on the page with subcategories from the chosen category
	When user clicks on the "Вітаміни від стресу" subcategory
	Then user is on the page with the products from the chosen subcategory
	When user clicks on the first vitamin in the result page
	Then user is on the page with the information about chosen product


Scenario: Find a vitamin B6 from brand "Nutricology" with a discount
	When user clicks on search field
	And user enters the search query "Витамин B6" in the search field
	And user clicks Enter on the keyboard
	Then user is on the search result page
	When user clicks on the "Знижка" filter
	And user clicks on the "Nutricology" filter
	And user clicks on the chosen product
	Then user is on the page with the information about chosen product

