/// 1. Compute whether or not you can afford the monthly payments on a given car
/// The auto dealers in your town are all running a five year, 0% interest promotion that you would like to take advantage of. But you are not sure if you can afford the monthly payments on the car you want.
///
/// The monthly payment is the cars total price divided by the number of months under the five year period.
///
/// Implement the canIBuy(vehicle:price:monthlyBudget:) function that takes the following arguments:
///
/// vehicle - The name of the vehicle you want to buy.
/// price - The price of the vehicle you want to buy.
/// monthlyBudget - The amount of money you can afford to pay each month.
/// The function should return the following message based on the following conditions:
///
/// If the monthly payment of the vehicle is less than or equal to the monthly budget, return the message "Yes! I'm getting a <vehicle>".
/// If the monthly payment of the vehicle is above your monthly budget by up to 10% (inclusive), return the message "I'll have to be frugal if I want a <vehicle>".
/// If the monthly payment of the vehicle is more than 10% above your monthly budget, return the message "Darn! No <vehicle> for me".
func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let budget: Double = monthlyBudget * 12 * 5
    let canBuy: Bool = price < budget
    return if canBuy {
        "Yes! I'm getting a \(vehicle)"
    } else if (price - budget) / budget <= 0.1 {
        "I'll have to be frugal if I want a \(vehicle)"
    } else {
        "Darn! No \(vehicle) for me"
    }
}

/// 2. Determine the type of drivers license you will need
/// You have decided to buy a used vehicle and you need to determine what type of drivers license you will need to operate it.
///
/// Implement the licenseType(numberOfWheels:) function that takes the argument numberOfWheels which is the number of wheels on the vehicle you want to buy.
///
/// The function should return the following message based on the following conditions:
///
/// If the number of wheels is 2 or 3, return the message "You will need a motorcycle license for your vehicle".
/// If the number of wheels is 4 or 6, return the message "You will need an automobile license for your vehicle".
/// If the number of wheels is 18, return the message "You will need a commercial trucking license for your vehicle".
/// If the number is any other number, return the message "We do not issue licenses for those types of vehicles".
func licenseType(numberOfWheels wheels: Int) -> String {
    return if wheels == 2 || wheels == 3 {
        "You will need a motorcycle license for your vehicle"
    } else if wheels == 4 || wheels == 6 {
        "You will need an automobile license for your vehicle"
    } else if wheels == 18 {
        "You will need a commercial trucking license for your vehicle"
    } else {
        "We do not issue licenses for those types of vehicles"
    }
}

/// 3. Calculate an estimation for the price of a used vehicle
/// Now that you made your decision you want to make sure you get a fair price at the dealership. Since you are interested in buying a used vehicle, the price depends on how old the vehicle is. For a rough estimate, assume if the vehicle is less than 3 years old, it costs 80% of the original price it had when it was brand new. If it is at least 10 years old, it costs 50%. If the vehicle is at least 3 years old but not older than 10 years, it costs 70% of the original price.
///
/// Implement the calculateResellPrice(originalPrice:yearsOld:) function that takes the arguments originalPrice which holds the vehicles original price, and yearsOld which holds the age of the vehicle in years. The function should return the resell price of the vehicle.
func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
    let price = Double(originalPrice)
    let result =
        if yearsOld < 3 {
            price * 0.8
        } else if 3 <= yearsOld && yearsOld < 10 {
            price * 0.7
        } else {
            price * 0.5
        }
    return Int(result)
}
