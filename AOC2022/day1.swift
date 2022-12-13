//
//  day1.swift
//  AOC2022
//
//  Created by Antoine Provot on 13/12/2022.
//

import Foundation

func cal_list() -> [Int] {
    let path = "/Users/antoine.provot/workspace/AOC2022/AOC2022/day1.txt"

    do {
        let contents = try String(contentsOfFile: path)
        let inventories = contents.split(separator:"\n\n")
        var elves_calories = [Int]()
        for inventory_string in inventories{
            var cal:Int = 0
            for i in inventory_string.split(separator: "\n") {
                cal = cal + (Int(i) ?? 0)
            }
            elves_calories.append(cal)
        }
        return elves_calories
        
    }
    catch let error as NSError {
        print("Not working lol \(error)")
        return []
    }
}

func day1_1() -> Int {
    let elves_calories = cal_list()
    return elves_calories.max() ?? 0

}

func day1_2() -> Int {
    let elves_calories:[Int] = cal_list().sorted().suffix(3)
    return elves_calories.reduce(0,+)
}
