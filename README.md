# Luhn
Luhn algorithm challenge

The Luhn algorithm is a method that credit cards and other identification numbers have of determining valid numbers and invalid ones. It is meant to prevent users from accidental errors.

How the Algorithm Works
Step 1 - break the credit card into it's individual digits.
Step 2 - Start from the right, double every second digit (i.e digit 2, 4, 6 etc.).
Step 3 - If the doubled value is greater than or equal to 10, take the value and subtract 9 from it.
Step 4 - Sum the digits.
Step 5 - If the sum is divisible by 10 it's a valid number. Otherwise it's invalid.

A valid case

Digits:	[4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,4]
Double Every Other:	[8,1,18,4,10,6,0,3,16,5,0,0,16,5,0,4]
Subtract: [9,8,1,9,4,1,6,0,3,7,5,0,0,7,5,0,4]
Sum of the Digits: 60. Is divisible by 10. Valid!

An invalid case

Digits:	[4,1,9,4,5,6,0,3,8,5,0,0,8,5,0,5]
Double Every Other:	[8,1,18,4,10,6,0,3,16,5,0,0,16,5,0,5]
Subtract: [9,8,1,9,4,1,6,0,3,7,5,0,0,7,5,0,5]
Sum of the Digits: 61. Is not divisible by 10. Invalid!

To Be Completed:

Write a method to determine if a credit card number is valid
Use the tests to make sure your solution is working
