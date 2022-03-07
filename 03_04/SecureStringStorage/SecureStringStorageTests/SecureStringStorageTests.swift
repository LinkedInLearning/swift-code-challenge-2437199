//
//  SecureStringStorageTests.swift
//  SecureStringStorageTests
//
//  Created by Karoly Nyisztor on 3/7/22.
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
    func testEmptyInput() {
        XCTAssertFalse(secureStore(string: "", forKey: "42"))
        XCTAssertFalse(secureStore(string: "Secret", forKey: ""))
        XCTAssertFalse(secureStore(string: "", forKey: ""))
    }
    
    func testSecureStore() throws {
        XCTAssertTrue(secureStore(string: "Secret", forKey: "42"))
    }
    
    func testRetrieveFromSecureStore() throws {
        XCTAssertNotNil(retrieveItem(forKey: "42"))
    }
}
