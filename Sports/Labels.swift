//
//  labels.swift
//  Sports
//
//  Created by Thomas Mataconis on 5/13/20.
//  Copyright © 2020 Thomas Mataconis. All rights reserved.
//
class Labels {
    let name: String
    let calc1: String
    let calc2: String
    let calc3: String
    
    let num1Calc1: String
    let num2Calc1: String
    
    let num1Calc2: String
    let num2Calc2: String
    
    let num1Calc3: String
    let num2Calc3: String
    let num3Calc3: String
    
    init(name: String) {
        if name == "Baseball" {
            self.name = "Baseball"
            calc1 = "Batting Average"
            calc2 = "On-Base Percentage %"
            calc3 = "Earned Run Average"
            
            num1Calc1 = "Hits"
            num2Calc1 = "At Bats"
            
            num1Calc2 = "Reached 1st"
            num2Calc2 = "Plate Apperances"
            
            num1Calc3 = "Earned Runs"
            num2Calc3 = "Innings Pitched"
            num3Calc3 = "Total Innings"
            
        } else if name == "Football" {
            self.name = "Football"
            calc1 = "Completion Percentage %"
            calc2 = "Yards Per Game"
            calc3 = "Touchdowns Per Game"
            
            num1Calc1 = "Completions"
            num2Calc1 = "Pass Attempts"
            
            num1Calc2 = "Total Yards"
            num2Calc2 = "Games Played"
            
            num1Calc3 = "Touchdowns"
            num2Calc3 = "Games Played"
            num3Calc3 = ""
            
        } else if name == "Basketball" {
            self.name = "Basketball"
            calc1 = "Shooting Percentage %"
            calc2 = "3 Point Percentage %"
            calc3 = "Points Per Game"
            
            num1Calc1 = "Shots Made"
            num2Calc1 = "Shots Attempted"
            
            num1Calc2 = "Shots Made"
            num2Calc2 = "Shots Attempted"
            
            num1Calc3 = "Total Points"
            num2Calc3 = "Games Played"
            num3Calc3 = ""

        } else if name == "Soccer" {
            self.name = "Soccer"
            calc1 = "Goals Scored Per Game"
            calc2 = "Assists Per Game"
            calc3 = "Shots Blocked Per Game"
               
            num1Calc1 = "Goals Scored"
            num2Calc1 = "Games Played"
               
            num1Calc2 = "Total Assists "
            num2Calc2 = "Games Played"
               
            num1Calc3 = "Total Blocks"
            num2Calc3 = "Games Played"
            num3Calc3 = ""
        } else {
            self.name = "ERROR"
            calc1 = "ERROR"
            calc2 = "ERROR"
            calc3 = "ERROR"
               
            num1Calc1 = "ERROR"
            num2Calc1 = "ERROR"
               
            num1Calc2 = "ERROR"
            num2Calc2 = "ERROR"
               
            num1Calc3 = "ERROR"
            num2Calc3 = "ERROR"
            num3Calc3 = "ERROR"
        }
    }
    
    func calculate(numOne: String, numTwo: String) -> Double {
        if let number1 = Double(numOne){
            if let number2 = Double(numTwo){
                  return number1 / number2
            } else{ return -1 }
        } else { return -1}
    }
    
    func era(numOne: String, numTwo: String, numThree: String) -> Double {
        if let number1 = Double(numOne){
            if let number2 = Double(numTwo){
                if let number3 = Double(numThree){
                    return (number1 * number3) / number2
                } else{ return -1}
            } else { return -1}
        } else { return -1}
    }
}
