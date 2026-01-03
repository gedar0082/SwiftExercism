import Testing

@testable import SwiftExercism

@Test()
func expectedMinutesInOven() async throws {
    #expect(expectedMinutesInOven == 40)
}

@Test
func remainingMinutesInOvenTest() async throws {
    #expect(remainingMinutesInOven(elapsedMinutes: 2) == 38)
}

@Test
func namepreparationTimeInMinutesTest() async throws {
    #expect(preparationTimeInMinutes(layers: 2) == 4)
}

@Test
func totalTimeInMinutesTest() async throws {
    #expect(totalTimeInMinutes(layers: 2, elapsedMinutes: 10) == 14)
}
