//
//  BinaryTree.swift
//  DataStructureFramework
//
//  Created by Dima Disavle on 12.02.2023.
//
/// Нода дерева
class Node<T> {

	var value: T
	var left: Node<T>?
	var right: Node<T>?

	internal init(value: T) {
		self.value = value
	}
}
/// Структура данных бинарное дерево
public struct BinaryTree<T:Comparable> {

	var root: Node<T>?
	/// Содержит ли дерево искомый элемент
	/// - Parameters:
	///  - value: значение искомого элемента
	/// - Returns: флаг результата поиска
	public func search(_ value: T) -> Bool {
		return preorderSearch(root, value: value)
	}
	/// Добавление элемента в дерево
	/// - Parameters:
	///  - value: значение элемента, которого нужно добавить
	public mutating func append(_ value: T)
	{
		if (root == nil) {
			self.root = Node(value: value)
		} else {
			var tek: Node<T>? = root
			var pred: Node<T>? = nil
			while (tek != nil)
			{
				pred = tek
				if (value < tek!.value) {
					tek = tek?.left
				}
				else {
					tek = tek?.right
				}
			}
			tek = Node(value: value)
			if (value < pred!.value) {
				pred?.left = tek
			}
			else {
				pred?.right = tek
			}
		}
	}
	/// Печать дерева
	/// - Returns: строку элементов дерева
	public func printTree() -> String {
		let result = preorderPrint(root, traverse: "")!
		return String(result[..<result.index(before: result.endIndex)])
	}

	private func preorderSearch(_ start: Node<T>?, value: T) -> Bool {
		if let start = start {
			if start.value == value {
				return true
			} else {
				return preorderSearch(start.left, value: value) || preorderSearch(start.right, value: value)
			}
		}
		return false
	}

	private func preorderPrint(_ start: Node<T>?, traverse: String) -> String? {
		var result = traverse
		if let start = start {
			result += "\(start.value)-"
			if let newValue = preorderPrint(start.left, traverse: result) {
				result = newValue
			}
			if let newValue = preorderPrint(start.right, traverse: result) {
				result = newValue
			}
		}
		return result
	}
}
