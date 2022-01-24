Feature: Making a order
As user of a website
I want to order a table
In order to buy it online 

@mytag
Scenario: Order a table on a website
	Given user is on the homepage
	When user clicks on search field
	And user enters the search query "Table" in the search field
	And user clicks the "Add to basket" button on the first table in the result page
	And user click on the button with shopping basket icon in header of the page
	Then user is on the basket page
	And chosen table is in the basket in the quantity of 1 item
	When user clicks on the "Order the product" button
	And user confirms payment information
	Then user sees pop-up with message "Thank you for ordering"