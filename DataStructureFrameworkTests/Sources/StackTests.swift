//
//  StackTests.swift
//  DataStructureFrameworkTests
//
//  Created by Dima Disavle on 12.02.2023.
//

import XCTest
@testable import DataStructureFramework

class StackTests: XCTestCase {
	var sut: Stack<Int>!

	override func setUp() {
		super.setUp()
		sut = Stack<Int>()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_empty_withoutElements_shouldBeTrue() {
		XCTAssertTrue(sut.isEmpty)
	}

	func test_empty_withElements_shouldBeFalse() {
		// given
		sut.push(1)
		// then
		XCTAssertFalse(sut.isEmpty)
	}

	func test_push_shouldBeTrue() {
		// given
		sut.push(1)
		// then
		XCTAssertTrue(sut.data.contains(1))
	}

	func test_count_shouldBeTrue() {
		// given
		sut.push(1)
		sut.push(2)
		sut.push(3)
		// then
		XCTAssertEqual(sut.count, 3)
	}

	func test_top_shouldBeTrue() {
		// given
		sut.push(1)
		sut.push(2)
		sut.push(3)
		// then
		XCTAssertEqual(sut.top, 3)
	}

	func test_pop_withElements_shouldBeTrue() {
		// given
		sut.push(1)
		// then
		XCTAssertEqual(sut.pop(), 1)
	}

	func test_pop_withoutElements_shouldBeFalse() {
		XCTAssertEqual(sut.pop(), nil)
	}
}
