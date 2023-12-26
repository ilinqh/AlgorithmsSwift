//
//  _1276NumberOfBurgersWithNoWasteOfIngredients.swift
//  AlgorithmsSwift
//
//  Created by lin on 2023/12/25.
//

import Foundation

class _1276NumberOfBurgersWithNoWasteOfIngredients {
    class Solution {
        func numOfBurgers(_ tomatoSlices: Int, _ cheeseSlices: Int) -> Array<Int> {
            if (tomatoSlices % 2 != 0 || tomatoSlices < cheeseSlices * 2) {
                return []
            }
            let jumbo = (tomatoSlices - cheeseSlices * 2) / 2
            let small = cheeseSlices - jumbo
            if (small < 0) {
                return []
            } else {
                return [jumbo, small]
            }
        }
    }
}
