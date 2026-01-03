let workHoursPerDay = 8
let workDaysInMonth = 22

/// 1. Calculate the daily rate given an hourly rate
/// A client contacts the freelancer to enquire about their rates. The freelancer explains that they work 8 hours a day. However, the freelancer knows only their hourly rates for the project. Help them estimate a day rate given an hourly rate.
///
/// Implement the function dailyRateFrom(hourlyRate:), that takes the argument hourlyRate which holds the freelancers hourly rate.
/// The function should return the daily rate based on the hourly rate.
func dailyRateFrom(hourlyRate: Int) -> Double {
    return Double(hourlyRate * workHoursPerDay)
}

/// 2. Calculate the monthly rate, given an hourly rate and a discount
/// Sometimes, a client is interested in hiring the freelancer for a longer period of time. The freelancer is willing to give a discount to the client, but only if the client hires them for at least a month. There is in total 22 workdays. Help the freelancer calculate their monthly rate given their hourly rate and the percentage discounted to the flat rate they are willing to give, rounded to the nearest whole number.
///
/// Implement the function monthlyRateFrom(hourlyRate:withDiscount:), that takes the arguments hourlyRate which holds the freelancers hourly rate, and withDiscount which holds the discount the freelancer is willing to give to the client. The function should return the monthly rate rounded to the nearest whole number.
func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let mDiscount: Double = (100 - discount) / 100
    return Double(
        (dailyRateFrom(hourlyRate: hourlyRate) * Double(workDaysInMonth))
            * mDiscount
    )
}

/// 3. Calculate the number of workdays given a budget, hourly rate and discount
/// Another day, a project manager offers the freelancer to work on a project with a fixed budget. Given the fixed budget and the freelancer's hourly rate, help them calculate the number of days they would work until the budget is exhausted. Take into account that in this scenario the freelancer is always willing to give the discount regardless of the number of days hired. The result must be rounded down to the nearest whole number.
///
/// Implement the function workdaysIn(budget:hourlyRate:withDiscount:), that takes the arguments:
///
/// budget which holds the budget for the project.
/// hourlyRate which holds the freelancers hourly rate.
/// withDiscount which holds the discount the freelancer is willing to give to the client.
/// The function should return the number of workdays the freelancer will work on the project rounded down.
func workdaysIn(
    budget: Double,
    hourlyRate: Int,
    withDiscount discount: Double
) -> Double {
    return Double(
        (budget
            / (dailyRateFrom(hourlyRate: hourlyRate) * ((100 - discount) / 100)))
            .rounded(.down)
    )
}
