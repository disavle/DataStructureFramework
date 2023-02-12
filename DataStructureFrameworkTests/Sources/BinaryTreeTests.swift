//
//  BinaryTreeTests.swift
//  DataStructureFrameworkTests
//
//  Created by Dima Disavle on 12.02.2023.
//

import XCTest
@testable import DataStructureFramework

class BinaryTreeTests: XCTestCase {
	
	var sut: BinaryTree<Int>!

	override func setUp() {
		super.setUp()
		sut = BinaryTree<Int>()
		sut.append(50)
		sut.append(25)
		sut.append(75)
		sut.append(12)
		sut.append(37)
		sut.append(43)
		sut.append(30)
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test_binarySearch_withNotExistingItem_shouldBeFalse() {
		XCTAssertFalse(sut.search(1))
	}

	func test_binarySearch_withExistingItem_shouldBeTrue() {
		XCTAssertTrue(sut.search(25))
	}

	func test_append_shouldBeTrue() {
		sut.append(3)
		XCTAssertTrue(sut.search(3))
	}

	func test_printTree_shouldBeTrue() {
		XCTAssertEqual(sut.printTree(), "50-25-12-37-30-43-75")
	}

//	func test_binarySearch_withNotExistingItem_shouldBeFalse() {
//		// given
//		var sut = BinaryTree<Int>()
//		sut.append(1)
//		let notExistingItem = 5
//		// when
//		let result = sut.search(notExistingItem)
//		// then
//		XCTAssertFalse(result)
//	}
//
//	func test_binarySearch_withExistingItem_shouldBeTrue() {
//		// given
//		var sut = BinaryTree<Int>()
//		sut.append(1)
//		let notExistingItem = 1
//		// when
//		let result = sut.search(notExistingItem)
//		// then
//		XCTAssertTrue(result)
//	}
}
