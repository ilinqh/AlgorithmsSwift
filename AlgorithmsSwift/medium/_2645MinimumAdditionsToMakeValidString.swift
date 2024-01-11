//
//  _2645MinimumAdditionsToMakeValidString.swift
//  AlgorithmsSwift
//
//  Created by lin on 2024/1/11.
//

import Cocoa

class _2645MinimumAdditionsToMakeValidString {
    class Solution {
        func addMinimum(_ word: String) -> Int {
            var result = 0
            var top: Character = "c"
            for index in word.indices {
                let ch = word[index]
                switch ch {
                case "a":
                    if top == "a" {
                        result += 2
                    } else if top == "b" {
                        result += 1
                    }
                case "b":
                    if top == "b" {
                        result += 2
                    } else if top == "c" {
                        result += 1
                    }
                case "c":
                    if top == "c" {
                        result += 2
                    } else if top == "a" {
                        result += 1
                    }
                default:
                    break
                }
                top = ch
            }
            if top == "a" {
                result += 2
            } else if top == "b" {
                result += 1
            }
            return result
        }
    }
}
