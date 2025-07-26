//
//  Day1_LargestElement.swift
//
//  Problem: Find the Largest Element in an Array
//
//  Description:
//  Write a Swift function to find the largest element in a given array of integers.
//
//  Example:
//  Input: [3, 8, 2, 5, 10, 1]
//  Output: 10
//
//  Approach:
//  - Assume the first element is the largest.
//  - Traverse each element in the array.
//  - If any number is greater than the current largest, update it.
//  - Return the largest number.
//
//  Time Complexity: O(n)
//  Space Complexity: O(1)
//

import Foundation

// Function to find the largest element in an array
func findLargest(in array: [Int]) -> Int? {
    // Step 1: Handle empty array case
    guard !array.isEmpty else {
        return nil
    }

    // Step 2: Start with the first element as the largest
    var largest = array[0]

    // Step 3: Loop through each number and update if we find a bigger one
    for number in array {
        if number > largest {
            largest = number
        }
    }

    // Step 4: Return the largest number
    return largest
}

// Example usage
let numbers = [3, 8, 2, 5, 10, 1]
if let maxNumber = findLargest(in: numbers) {
    print("✅ Largest number is \(maxNumber)")
} else {
    print("⚠️ Array is empty.")
}