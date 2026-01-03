/// 1. Define if bird gets bonus points
/// In the game, the bird will get bonus points if they touch an eagle while having a power-up.
///
/// Define the function bonusPoints(powerUpActive:touchingEagle:) that takes two arguments powerUpActive, which holds if the bird has an active power-up, and the argument touchingEagle which holds if the bird is touching an eagle. The function should return true only if the bird has a power-up active and is touching an eagle, and false otherwise.
func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return powerUpActive && touchingEagle
}

/// 2. Define if bird scores
/// In the game, the player gets points when picking up a seed or a power-up.
///
/// Define the function score(touchingPowerUp:touchingSeed:) that takes two arguments touchingPowerUp, which holds if the bird is touching a power-up, the argument touchingSeed which holds if the bird is touching a seed. The function should return true if the bird is touching a power-up or a seed, and return false otherwise.
func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    return touchingPowerUp || touchingSeed
}

/// 3. Define if bird loses
/// Define the function lose(powerUpActive:touchingEagle:) that takes two arguments powerUpActive, which holds if the bird has an active power-up, and the argument touchingEagle which holds if the bird is touching an eagle. The function should return true if the character is touching an eagle and does not have a power-up active, and return false otherwise.
func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    return touchingEagle && !powerUpActive
}

/// 4. Define if bird wins
/// Define the win(hasPickedUpAllSeeds:powerUpActive:touchingEagle:) function that takes the arguments:
///
/// hasPickedUpAllSeeds if the bird has picked up all of the seeds.
/// powerUpActive if the bird has a power-up active.w
/// touchingEagle if the bird is touching an eagle.
/// The function should return true if the bird has gathered all of the seeds and has not lost based on the arguments defined in part 3, and return false otherwise.
func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool)
    -> Bool
{
    return hasPickedUpAllSeeds
        && !lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle)
}
