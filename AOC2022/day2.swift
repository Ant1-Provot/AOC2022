//
//  day2.swift
//  AOC2022
//
//  Created by Antoine Provot on 13/12/2022.
//

import Foundation

enum RockPaperScissor {
    case rock
    case paper
    case scissor
}


func rps_strategies() -> [RockPaperScissor] {
    let path = "/Users/antoine.provot/workspace/AOC2022/AOC2022/day2_test.txt"

    do {
        let contents = try String(contentsOfFile: path, encoding: .utf8)
        let rules = contents.split(separator:"\n")
        for rule in rules {
            print(rule)
            
            switch rule {
            case "A":
                print("a")
            case "X":
                print("coucou")
            default:
                print("lol")
                
            }
            
            
        }
        return []
    }
    catch let error as NSError {
        print("Not working lol \(error)")
        return []
    }
}

func day2_1() -> Int {
    let _ = rps_strategies()
    return 0

}
