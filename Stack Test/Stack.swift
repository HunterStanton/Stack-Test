// A LIPO stack implementation
// Gracefully taken from https://github.com/raywenderlich/swift-algorithm-club/blob/master/Stack/Stack.swift
// Copyright (c) 2016 Matthijs Hollemans and contributors
/* Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE. */


public struct Stack<T> {
  fileprivate var array = [T]()
    
    
  /// Whether or not the stack is empty.
  public var isEmpty: Bool {
    return array.isEmpty
  }
    
  /// Gets the number of elements on the stack.
  public var count: Int {
    return array.count
  }
    
  /// Pushes an element onto the stack.
  ///
  /// - Parameter element: The element that will be pushed onto the stack.
  public mutating func push(_ element: T) {
    array.append(element)
  }
    
  /// Pops an element off of the stack.
  ///
  /// - Returns: The element that is popped off the stack.
  public mutating func pop() -> T? {
    return array.popLast()
  }
    
  /// Gets the element that is on the top of the stack.
  public var top: T? {
    return array.last
  }
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        var curr = self
        return AnyIterator {
            _ -> T? in
            return curr.pop()
        }
    }
}
