import Testing

@testable import SwiftExercism

@Test
func dailyRateFromTest() async throws {
    #expect(dailyRateFrom(hourlyRate: 3) == 24.0)
}

@Test
func monthlyRateFromTest() async throws {
    #expect(abs(monthlyRateFrom(hourlyRate: 3, withDiscount: 20.0) - 422.4) < 0.001)
}

@Test
func workdaysInTest() async throws {
    #expect(abs(workdaysIn(budget: 100.0, hourlyRate: 2, withDiscount: 20) - 7.0) < 0.001)
}
