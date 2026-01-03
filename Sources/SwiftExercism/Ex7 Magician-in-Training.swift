/// 1. Retrieve a card from a stack
/// To pick a card, return the card at index position from the given stack.
///
/// Implement the function getCard(at:from:) that takes two arguments: at which is the position of the card in the stack, and from which is the stack of cards. The function should return the card at position index from the given stack.
func getCard(at index: Int, from stack: [Int]) -> Int {
    if stack.count <= index {
        return 0
    } else {
        return stack[index]
    }
}

/// 2. Change a card in the stack
/// Perform some sleight of hand and exchange the card at index position with the replacement card provided.
///
/// Implement the function setCard(at:in:to) that takes three arguments: at which is the position of the card in the stack, in which is the stack of cards, and to which is the new card to replace the card at position index. The function should return a copy of the stack with the card at position index replaced with the new card. If the given index is not a valid index in the stack, the original stack should be returned, unchanged.
func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    if stack.count <= index {
        return stack
    } else {
        var _stack = stack
        _stack[index] = newCard
        return _stack
    }
}

/// 3. Insert a card at the of top the stack
/// Make a card appear by inserting a new card at the top of the stack.
///
/// Implement the function insert(_:atTopOf:) that takes two arguments: the new card to be inserted, and the stack of cards. The function should returns a copy of the stack with the new card provided added to the top of the stack.
func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
    var _stack = stack + [newCard]
    return _stack
}

/// 4. Remove a card from the stack
/// Make a card disappear by removing the card at the given position from the stack.
///
/// Implement the function removeCard(at:from:) that takes two arguments: at which is the position of the card in the stack, and from which is the stack of cards. The function should return a copy of the stack with the card at position index removed. If the given index is not a valid index in the stack, the original stack should be returned, unchanged.
func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    if stack.count <= index {
        return stack
    } else {
        var _stack = stack
        _stack.remove(at: index)
        return _stack
    }
}

/// 5. Insert a card in the stack
/// Make a card appear by inserting a new card at the given position in the stack.
///
/// Implement the function insert(_:at:from:) that takes three arguments: the new card to be inserted, the position at which the new card should be inserted, and the stack of cards. The function should return a copy of the stack with the new card provided added at the given position. If the given index is not a valid index in the stack, the original stack should be returned, unchanged.
func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
    if stack.count == 0 {
        return [newCard]
    } else if stack.count <= index {
        return stack
    } else {
        var _stack = stack
        _stack.insert(newCard, at: index)
        return _stack
    }
}

/// 6. Check size of the stack
/// Check whether the size of the stack is equal to stackSize or not.
///
/// Implement the function checkSizeOfStack(_:_:) that takes two arguments: stack which is the stack of cards, and stackSize which is the size of the stack. The function should return true if the size of the stack is equal to stackSize and false otherwise.
func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    return stack.count == size
}
