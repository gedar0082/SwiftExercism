import Testing

@testable import SwiftExercism

@Test()
func bonusPointsTest() async throws {
    #expect(bonusPoints(powerUpActive: true, touchingEagle: false) == false)
}

@Test
func scoreTest() async throws {
    #expect(score(touchingPowerUp: true, touchingSeed: false) == true)
}

@Test
func loseTest() async throws {
    #expect(lose(powerUpActive: true, touchingEagle: false) == false)
}

@Test
func winTest() async throws {
    #expect(win(hasPickedUpAllSeeds: false, powerUpActive: false, touchingEagle: false) == false)
}
