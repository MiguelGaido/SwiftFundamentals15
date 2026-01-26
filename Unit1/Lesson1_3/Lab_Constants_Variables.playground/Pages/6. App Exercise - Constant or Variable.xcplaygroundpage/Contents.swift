/*:
## App Exercise - Fitness Tracker: Constant or Variable?
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 There are all sorts of things that a fitness tracking app needs to keep track of in order to display the right information to the user. Similar to the last exercise, declare either a constant or a variable for each of the following items, and assign each a sensible value. Be sure to use proper naming conventions.
 
- Name: The user's name
- Age: The user's age
- Number of steps taken today: The number of steps that a user has taken today
- Goal number of steps: The user's goal for number of steps to take each day
- Average heart rate: The user's average heart rate over the last 24 hours
 */
var name = "Miguel"
print("I chose a variable because people can change their names")
var age = 24
print("I chose a variable because age can change")
let stepsToday = 10000
print("I chose a constant because the number of steps the user has done should not change (assuming they don't take more steps during the day)")
let stepsGoal = 100000
print("I chose a constant because the goal should not change (assuming the app only allows the user to change the goal daily")
let heartRate = 89
print("I chose a constant because the heart rate is a an average and it should not change over time (assuming this is a daily heart rate average")

/*:
 Now go back and add a line after each constant or variable declaration. On those lines, print a statement explaining why you chose to declare the piece of information as a constant or variable.
 
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Types and Type Safety](@next)
 */
