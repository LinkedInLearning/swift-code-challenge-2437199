// Swift Code Challenges
//
// Source Code
//
// Challenge #12: Storing Strings Securely
// The aim of this challenge is to create a function that takes a string and a secret key as input and stores it in the keychain. The function returns a boolean value indicating whether the operation was successful.
//
// Interested in Swift programming?:
// Check out my [Youtube channel](https://www.youtube.com/c/swiftprogrammingtutorials) and my [courses on LinkedIn Learning](https://www.linkedin.com/learning/instructors/karoly-nyisztor)
//
//  SecureStringStorageTests.swift
//  SecureStringStorageTests
//

import XCTest
@testable import SecureStringStorage

class SecureStringStorageTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSecureStore() throws {
        XCTAssertTrue(secureStore(string: "Secret", forKey: "42"))
    }
}
