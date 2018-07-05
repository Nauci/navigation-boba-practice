In this practice project, we are going to practice with navigation.

Today, we will be building a Boba Ordering app. There are a total of four screens:  
Drinks -> Size -> Toppings -> Order.  
As you may guess, this means we are building 4 view controllers!  
  
From each screen, as you make a selection, you will push the following screen onto the navigation stack.  

*Step One*  Drinks:  
- On this screen, we first want the title of this page to be "Pick Your Drink"  
- Each of the four tiles on this screen are already hooked up with buttons and connected with the methods milkTeaPressed, etc.  
Inside of these methods, you'll want to create an instance of SizeViewController and push it onto the stack.  
- If you've completed the previous screen, you may notice that nothing happens. This is because there is no navigation in this project!  
Go to AppDelegate.swift and wrap the instance of DrinksViewController in an UINavigationController. Remember to change the root view controller of the window to be the new navigation controller.  

*Step Two*  Size:  
- On this screen, the title should be "Pick Your Size"  
- There are three buttons that have been hooked up as IBOutlets in your view controller.  
- Use the addTarget:selector: method on UIButton to add method handlers to your buttons.  
- Whenever any of the buttons has been clicked, Create an instance of ToppingsViewController and push it onto the navigation stack.  

*Step Three* Toppings:  
- On this screen, the title should be "Pick Your Toppings"  
- On this screen, we've already added the method handlers for the four toppings.  
- Whenever any of the toppings has been selected, push an instance of the SubmitViewController onto the navigation stack.

*Step Four* Submit:  
- When the submit button is pressed, we want to return to the home screen.  
Since we haven't learned this method yet, we're going to give you a hint!  
You can use the popToRootViewController(animated:) method to pop all view controllers from the stack.  

And that's it! You are done!  

*BONUS* +5 points
If you wanna try a little bigger challenge.

ToppingsViewController  
- In this step, we want the user to have the ability to select multiple toppings  
- Whenever a topping is selected, we want to give the topping that was selected a green border. If a topping is not selected, it should have no border.  
Let's say we have a view stored in a variable called myView. To give it a green border, you can use this code:  
`myView.layer.border = UIColor.green.cgColor`  
`myView.layer.borderWidth = 1.0`  

Then, we'll need to add another button with the text "NEXT". When this button is selected, continue to the final step.

*BONUS* +10 points
This challenge will be a bit tougher.  
In this challenge, you'll be populating the orderLabel in OrderViewController. To do this, you will be passing information to the next view controller in the flow through the initializer.  
Let's see one example. For the first transition:  
- Create a property inside SizeViewController called `drink` of type String.  
- Create an initializer for SizeViewController which takes in a parameter drink of type String.
- Store the drink that was passed in from the initializer in the parameter called drink.

For each following view controller, you will need a drink parameter as well as other parameters to keep track of the other choices.

Good luck!
