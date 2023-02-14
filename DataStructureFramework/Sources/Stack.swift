//
//  Stack.swift
//  DataStructureFramework
//
//  Created by Dima Disavle on 12.02.2023.
//

// Структура данных стек. LIFO
public struct Stack<T: Comparable> {
// MARK: - Internal property
	private(set) var data: [T]

	// MARK: - Public property
	/// Проверка на пустоту
	public var isEmpty: Bool {
		true
	}

	public var count: Int {
		data.count
	}
	/// Возвращает верхний элемент в стеке
	public var top: T? {
		data.last
	}

	// MARK: - Life cycle
	public init() {
		self.data = [T]()
	}

	// MARK: - Public function
	/// Добавление элемента в стек
	/// - Parameters:
	///  - value: элемент для добавления в стек
	public mutating func push(_ value: T) {
		data.append(value)
	}
	/// Удаление верхнего элемента в стеке
	/// - Returns: удаленный элемент
	public mutating func pop() -> T? {
		data.popLast()
	}
}
