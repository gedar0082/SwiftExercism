import Testing

@testable import SwiftExercism

@Test
func buildSignTest() async throws {
    #expect(buildSign(for: "Birthday", name: "Ivan") == "Happy Birthday Ivan!")
}

@Test
func graduationForTest() async throws {
    #expect(graduationFor(name: "Ivan", year: 2023) == "Congratulations Ivan!\nClass of 2023")
}

@Test
func costOfTest() async throws {
    #expect(costOf(sign: "Congrats!") == 38)
}
