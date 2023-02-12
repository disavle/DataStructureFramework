//
//  QueueTests.swift
//  DataStructureFrameworkTests
//
//  Created by Dima Disavle on 12.02.2023.
//

import XCTest
@testable import DataStructureFramework

class QueueTests: XCTestCase {
	var sut: Queue<Int>!

	override func setUp() {
		super.setUp()
		sut = Queue<Int>()
		sut.enqueue(1)
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_enqueue_shouldBeTrue() {
		// given
		sut.enqueue(2)
		// then
		XCTAssertTrue(sut.contains(2))
	}

	func test_contains_queueWithItem_sholudBeTrue() {
		XCTAssertTrue(sut.contains(1))
	}

	func test_contains_queueWithoutItem_sholudBeFalse() {
		XCTAssertFalse(sut.contains(3))
	}

	func test_empty_queueWithoutItems_shouldBeTrue() {
		// given
		_ = sut.dequeue()
		// then
		XCTAssertTrue(sut.isEmpty)
	}

	func test_empty_queueWithItems_shouldBeFalse() {
		XCTAssertFalse(sut.isEmpty)
	}

	func test_dequeue_shouldBeFalse() {
		// given
		guard let deletedValue = sut.dequeue() else {
			return XCTAssertFalse(true)
		}
		// then
		XCTAssertFalse(sut.contains(deletedValue))
	}

	func test_front_shouldBeTrue() {
		// given
		sut.enqueue(2)
		// then
		XCTAssertEqual(sut.peek, 1)
	}

	func test_printQueue_shouldBeTrue() {
		// given
		sut.enqueue(2)
		sut.enqueue(3)
		sut.enqueue(4)
		sut.enqueue(5)
		// then
		print(sut.description)
		XCTAssertEqual(sut.description,"[1 -> 2 -> 3 -> 4 -> 5]")
	}
}
