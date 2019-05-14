//
//  Clean_Swift_ProjectTests.swift
//  Clean Swift ProjectTests
//
//  Created by Israel3D on 14/05/2019.
//  Copyright © 2019 Israel3D. All rights reserved.
//

import XCTest
@testable import Clean_Swift_Project

class Clean_Swift_ProjectTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLabelText() {
        let cell = PostCell(style: .default, reuseIdentifier: PostCell.reuseIdentifier)
        cell.lblTitle.text = "Israel Mesquita"
        XCTAssertEqual(cell.lblTitle.text, "Israel Mesquita")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
