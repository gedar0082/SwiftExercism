/// 1. Define the expected oven time in minutes
/// Define the expectedMinutesInOven constant, that stores how many minutes the lasagna should be in the oven. According to the cooking book, the expected oven time in minutes is 40:
let expectedMinutesInOven = 40
let minutesToPrepareALayer = 2

/// 2. Calculate the remaining oven time in minutes
/// Define the function remainingMinutesInOven(elapsedMinutes:) that takes the argument elapsedMinutes which holds the number of minutes the lasagna has already been in the oven. The function should return how many minutes the lasagna still has to remain in the oven, based on the expected oven time in minutes from the previous task.
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
    return expectedMinutesInOven - elapsedMinutes
}

/// 3. Calculate the preparation time in minutes
/// Define the function preparationTimeInMinutes(layers:) that takes the argument layers which holds the number of layers you added to the lasagna. The function should return how many minutes you spent preparing the lasagna, assuming each layer takes you 2 minutes to prepare.
func preparationTimeInMinutes(layers: Int) -> Int {
    return minutesToPrepareALayer * layers
}

/// 4. Calculate the total working time in minutes
/// Define the function totalTimeInMinutes(layers:elapsedMinutes:) that takes two arguments: the layers parameter is the number of layers you added to the lasagna, and the elapsedMinutes parameter is the number of minutes the lasagna has been in the oven. The function should return how many minutes in total you've worked on cooking the lasagna, which is the sum of the preparation time in minutes, and the time in minutes the lasagna has spent in the oven at the moment.
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
    return elapsedMinutes + preparationTimeInMinutes(layers: layers)
}
