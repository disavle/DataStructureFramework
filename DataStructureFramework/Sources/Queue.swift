//
//  Queue.swift
//  DataStructureFramework
//
//  Created by Dima Disavle on 12.02.2023.
//

import Foundation

/// Структура данных очередь. FIFO
public struct Queue<T: Comparable> {
	// MARK: - Private property
	private var data = [T]()

	// MARK: - Public property
	/// Проверка на пустоту
	public var isEmpty: Bool {
		return data.isEmpty
	}
	/// Возвращает элемент первый в очереди
	public var peek: T? {
		return data.first
	}

	// MARK: - Public function
	/// Добавление элемента в очередь
	/// - Parameters:
	///  - value: элемент для добавления в очередь
	public mutating func enqueue(_ value: T) {
		data.append(value)
	}
	/// Содержит ли очередь искомый элемент
	/// - Parameters:
	///  - value: значение искомого элемента
	/// - Returns: флаг результата поиска
	public func contains(_ value: T) -> Bool {
		return data.contains(value)
	}
	/// Удаление первого элемента в очереди
	/// - Returns: удаленный элемент
	public mutating func dequeue() -> T? {
		if isEmpty {
			return nil
		} else {
			return data.removeFirst()
		}
	}
}
// MARK: - String extenstion
extension Queue: CustomStringConvertible {
	public var description: String {
		return data.description.replacingOccurrences(
			of: ", ", with: " -> "
		)
	}
}
