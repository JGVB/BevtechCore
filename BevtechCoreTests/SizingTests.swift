//
//  SizingTests.swift
//  BevtechCoreTests
//
//  Created by James VanBeverhoudt on 4/22/18.
//  Copyright © 2018 James VanBeverhoudt. All rights reserved.
//

import XCTest
@testable import BevtechCore

class SizingTests: XCTestCase {

    private let attString = NSAttributedString(string: "short", attributes: [.font: UIFont.boldSystemFont(ofSize: 10)])
    private let attStringLargeFont = NSAttributedString(string: "short", attributes: [.font: UIFont.boldSystemFont(ofSize: 50)])
    private let attStringLong = NSAttributedString(string: "long long long long long long long long long long long long long long long", attributes: [.font: UIFont.boldSystemFont(ofSize: 10)])


    // MARK: Height

    func testAttHeight() {
        XCTAssertEqual(
            attString.height(withConstrainedWidth: 100),
            ceil(UIFont.boldSystemFont(ofSize: 10).lineHeight)
        )
        XCTAssertEqual(
            attString.height(withConstrainedWidth: 4),
            ceil(UIFont.boldSystemFont(ofSize: 10).lineHeight * 5)
        )
        XCTAssertEqual(
            attStringLargeFont.height(withConstrainedWidth: 20),
            ceil(UIFont.boldSystemFont(ofSize: 50).lineHeight * 5)
        )
    }

    func testStringHeight() {
        XCTAssertEqual(
            "short".height(withConstrainedWidth: 100, font: .systemFont(ofSize: 10)),
            ceil(UIFont.systemFont(ofSize: 10).lineHeight)
        )
        XCTAssertEqual(
            "short".height(withConstrainedWidth: 4, font: .systemFont(ofSize: 10)),
            ceil(UIFont.systemFont(ofSize: 10).lineHeight * 5)
        )
        XCTAssertEqual(
            "long long long long long long long long long long long long long long long".height(withConstrainedWidth: 50, font: .systemFont(ofSize: 10)),
            ceil(UIFont.systemFont(ofSize: 10).lineHeight * 8)
        )
    }

    // MARK: Width

    func testAttWidth() {
        XCTAssertEqual(
            attString.width(withConstrainedHeight: UIFont.boldSystemFont(ofSize: 10).lineHeight),
            27
        )
        XCTAssertEqual(
            attStringLong.width(withConstrainedHeight: UIFont.boldSystemFont(ofSize: 10).lineHeight),
            366
        )
    }

    func testStringWidth() {
        XCTAssertEqual(
            "short".width(withConstrainedHeight: UIFont.boldSystemFont(ofSize: 10).lineHeight, font: .boldSystemFont(ofSize: 10)),
            27
        )
        XCTAssertEqual(
            "long long long long long long long long long long long long long long long".width(withConstrainedHeight: UIFont.boldSystemFont(ofSize: 10).lineHeight, font: .boldSystemFont(ofSize: 10)),
            366
        )
    }
}
