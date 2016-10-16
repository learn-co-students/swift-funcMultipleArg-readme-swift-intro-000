func moonsOfJupiter() {
    print("There are 67 moons orbiting Jupiter.")
}

moonsOfJupiter()


// planetDescription, take 1
// The bit of code below is commented out, since we iterate on this definition of planetDescription() below.
/*
func planetDescription(planet: String) {
    print("There are 67 moons orbiting \(planet).")
}

planetDescription(planet: "Jupiter")

var planet = "Mars"

planetDescription(planet: planet)
*/


func greet(name: String, greeting: String) {
    print("\(greeting), \(name)!")
}


func planetDescription(planet: String, numberOfMoons: Int) {
    print("There are \(numberOfMoons) moons orbiting \(planet)")
}

// This line of code gives an error.
// Uncomment it to see what the error is!
//planetDescription("Jupiter", 67)

planetDescription(planet: "Jupiter", numberOfMoons: 67)

var planet = "Jupiter"
var moons = 67
planetDescription(planet: planet, numberOfMoons: moons)
planet = "Mars"
moons = 2
planetDescription(planet: planet, numberOfMoons: moons)



//External vs Local Parameter Names


