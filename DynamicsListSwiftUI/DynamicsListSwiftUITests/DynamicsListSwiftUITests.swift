//
//  DynamicsListSwiftUITests.swift
//  DynamicsListSwiftUITests
//
//  Created by Giannini ORC on 6/11/19.
//  Copyright © 2019 Giannini ORC. All rights reserved.
//

import XCTest

@testable import DynamicsListSwiftUI

class DynamicsListSwiftUITests: XCTestCase {
    var dataSource : [User]!

    override func setUp() {
        super.setUp()
        self.dataSource = UserData.shared.starterUsers
    }

    override func tearDown() {
        self.dataSource = nil
        super.tearDown()
    }
    
    func testAllUserDataIsCorrectType() {
        for eachUser in dataSource {
            XCTAssert(eachUser.typeCheck(), "User data is the wrong type \(eachUser.id) should be an int, \(eachUser.username), \(eachUser.message), and \(eachUser.imageName) should be all be Strings")
        }
    }
    
    func testAllUsersHaveData() {
        for eachUser in dataSource {
            XCTAssert(eachUser.isUserValid(), "User Id \(eachUser.id) is missing data: \(eachUser)")
        }
    }
    
    func testAllUserIdsAreUnique() {
        var uniqueDictionary = [Int: Int]()
        for eachUser in dataSource {
            if uniqueDictionary[eachUser.id] == nil {
                uniqueDictionary[eachUser.id] = 1
            } else {
                uniqueDictionary[eachUser.id]! += 1
            }
        }
        for eachId in uniqueDictionary {
            if eachId.value > 1 {
                XCTAssert(false, "There is a duplicate: id # \(eachId.key) is shared with multiple users")
            }
        }
        XCTAssertTrue(true)
    }
}
