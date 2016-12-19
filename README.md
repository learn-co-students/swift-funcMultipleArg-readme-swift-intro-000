# Functions with Multiple Arguments

![Neil](http://i.imgur.com/mFxZvkH.jpg?1)
> For me, I am driven by two main philosophies: know more today about the world than I knew yesterday and lessen the suffering of others. You'd be surprised how far that gets you. ~[Neil deGrasse Tyson](https://en.wikipedia.org/wiki/Neil_deGrasse_Tyson)

## Overview 

In this lesson, we'll create functions that contain multiple arguments. 

## Learning Objectives

* Explain the benefit of creating a function that takes in multiple arguments
* Write and call functions that take in multiple arguments

## Functions and Arguments

We create functions to keep self-contained chunks of code in one place, and call them as often as we want. Functions can take in an argument and so we can generalize its behavior a bit. Let's see how functions can be even _more_ useful.

Let's review how you create functions.

Here's your goal: Write a function that will print the string "There are &lt;number&gt; moons orbiting &lt;planet&gt;." This will let you show off to our friend Neil DeGrasse Tyson how much you know about astronomy, _and_ write some Swift code in the meantime. Start by proving how much you know about Jupiter (hint: Jupiter has _67_ moons).

![67 moons, ah ah ah](http://i.imgur.com/z9pyxDM.jpg)

What's the simplest way to write your function?

A simple way to write a function to print "There are 67 moons orbiting Jupiter." would be this:

```swift
func moonsOfJupiter() {
    print("There are 67 moons orbiting Jupiter.")
}
```

Take a moment to remember how you write functions in Swift. Functions are introduced using the `func` keyword. Then, you write the name of the function—in this case, `moonsOfJupiter` (remember, function names can't contain spaces!). Next comes the argument list in parentheses. In this case, `moonsOfJupiter` doesn't take any arguments, so you just write an empty set of parentheses. Then you write the body of the function—the statements that will be executed when the function is called—between curly braces.

Easy, right?

Go ahead and write your function in your playground file. Don't forget to call it! Remember that you call a function by writing a statement consisting of the name of the function and parentheses:

```swift
moonsOfJupiter()
```

Do you see "There are 67 moons orbiting Jupiter." in your playground's console? You should!

### Arguments

Of course, this function isn't very general. You want to be able to print the number of moons that _any_ planet takes, right? Remember that you learned that functions can take arguments, so let's make the name of the planet an argument. Do you remember how to do that? It's easy: Just add the argument name to the set of parentheses you write after the function name. Don't forget the type of the argument! Since you're accepting the name of the planet as an argument, the argument should be a `String`.

Here's a function definition that takes the name of the planet as an argument. Since we're allowing any planet name to be passed, let's name the function `planetDescription`. Go ahead and add this to your playground file.

```swift
func planetDescription(planet: String) {
    print("There are 67 moons orbiting \(planet).")
}
```

Do you remember how to call a function with an argument? Go ahead and try calling `planetDescription` in your playground file. If you need help, here's how you call a function that takes an argument:

```swift
planetDescription(planet: "Jupiter")
```

Do you see "There are 67 moons orbiting Jupiter." printed to your console? Excellent!

But wait...

What happens when you call `planetDescription` with "Mars" as an argument?

```swift
var planet = "Mars"
planetDescription(planet: planet)
```

Did you see "There are 67 moons orbiting Mars." in your console?

Something's wrong here! There are only two moons orbiting Mars. If you tell Neil DeGrasse Tyson that there are 67 moons orbiting Mars, he won't be impressed at all! You need to fix this, before he can see your program!

## Functions and Multiple Arguments

You've probably realized the problem by now: In order for your function to work, it needs to take _two_ arguments, not just one. The planet name alone won't cut it—you need to be able to pass in the number of moons, too.

Swift functions can take more than one argument. Remember when you declared the argument to `planetDescription`? You can specify more than one argument in that argument list. You can specify multiple arguments by placing them in parentheses, separated by commas, using the same name-type pattern you used for single arguments. Take a look at this in action:

```swift
func greet(name: String, greeting: String) {
    print("\(greeting), \(name)!")
}
```

Notice that in the body of the function, arguments are still referred to by the name you specify in the argument list, even when you specify more than one. Easy!

Now that you know how to specify multiple arguments, how can you adapt `planetDescription(planet:)` to take both a planet name and its number of moons? Try it out in your playground!

In case you got stuck, here's what `planetDescription` should look like now:

```swift
func planetDescription(planet: String, numberOfMoons: Int) {
    print("There are \(numberOfMoons) moons orbiting \(planet)")
}
```

Great! Now, how do you call that function?

Since `planetDescription` now takes more than one argument, you have to specify _all_ the arguments when calling the function. If you only specify one, you will get an error. Give it a try! Swift will report an error if you only call `planetDescription` with one argument:

```swift
planetDescription(planet: "Jupiter")  // This is an error!
```

Since you specify multiple arguments using a comma-separated list, you may be tempted to call `planetDescription` with multiple arguments, like this:

```swift
planetDescription("Jupiter", 67)
```

Try that in your playground file. It won't work!

You can't exclude the names of the arguments when calling on a function! Below is the correct way to call on this function.

```swift
planetDescription(planet: "Jupiter", numberOfMoons: 67)
```

Try calling `planetDescription` in different ways. Recall that you can pass variables into a function when you call it—even if the function takes more than one argument. Try impressing Neil DeGrasse Tyson with your knowledge of our solar system! Here's how you can call a function with multiple arguments using variables:

```swift
var planet = "Jupiter"
var moons = 67
planetDescription(planet: planet, numberOfMoons: moons)
// prints "There are 67 moons orbiting Jupiter"

planet = "Mars"
moons = 2
planetDescription(planet: planet, numberOfMoons: moons)
// prints "There are 2 moons orbiting Mars"
```

Now that's impressive! Play around with functions that take multiple arguments a while until you are really comfortable with them. There are six more planets in our solar system that you can use in your own examples!

# External vs Local Parameter Names

## Functions Video (argument labels, parameter names)

[![](http://img.youtube.com/vi/rKEGciKb4sY/0.jpg)](https://www.youtube.com/watch?v=rKEGciKb4sY "Functions Arg")


Function parameters have both an external parameter name and a local parameter name. An external parameter name is used to label arguments passed to a function call. A local parameter name is used in the implementation of the function. What does that mean?

```swift
func theBestFunction(firstParameterName: String, secondParameterName: String) {
    
    // function body here
    
    // firstParameterName and secondParameterName refer to the argument values for the first and second parameters
    
}
```

```swift
theBestFunction(firstParameterName: "Brick", secondParameterName: "Oven")
```

The name of this function is `theBestFunction` and it takes in two arguments, both of which are of type `String`. If you notice that when we call the function, the first parameter and the second (and any subsequent) parameters use their local name as their external name.

If I were to describe this function to you, I would type it out like this:

`theBestFunction(firstParameterName:secondParameterName)`

The reason we _describe_ the function like that, is because when writing out our function to someone in text, we write out the name followed by `( )` -- within those parenthesis are all the external names followed by a colon `:`. How do we denote that there isn't an external name? We do so with the `_` underbar. 

The local name of an argument is how you refer to the argument within the implementation of your function.

**Name of function**  
`theBestFunction`

**First Argument**  
External Name = `firstParameterName`  
Local Name = `firstParameterName` 

**Second Argument**  
External Name = `secondParameterName`  
Local Name = `secondParameterName`

---

What if we wanted to create a function with NO External Names, can we do that? Yes.

```swift
func theBestFunction(_ firstParameterName: String, _ secondParameterName: String, _ thirdParameterName: String, _ fourthParameterName: String) {
    
    print(firstParameterName)
    print(secondParameterName)
    print(thirdParameterName)
    print(fourthParameterName)
    
}
```

If we wanted to type out the description of this function, it would look like this:

`theBestFunction(_:_:_:_:)`

When typing out the description, you only include the external names . The first, second and any subsequent arguments, if we wanted for them to have NO external name, we have to add the _ before the local name. We always need to have a local name because we need to be able to refer to that argument within the implementation of our function.

```swift
theBestFunction("Hello", "To", "You", "Marty")

/* Prints
 Hello
 To
 You
 Marty
 */
```

**Name of function**  
`theBestFunction`

**First Argument**  
External Name = `_`  
Local Name = `firstParameterName` 

**Second Argument**  
External Name = `_`  
Local Name = `secondParameterName`

**Third Argument**  
External Name = `_`  
Local Name = `thirdParameterName` 

**Fourth Argument**  
External Name = `_`  
Local Name = `fourthParameterName`


<a href='https://learn.co/lessons/FunctionsMultipleArg' data-visibility='hidden'>View this lesson on Learn.co</a>

<p class='util--hide'>View <a href='https://learn.co/lessons/swift-funcMultipleArg-readme'>Functions and Multiple Arguments</a> on Learn.co and start learning to code for free.</p>
