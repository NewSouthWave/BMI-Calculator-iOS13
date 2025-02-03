//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Nam on 2/3/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0) // 옵셔널 처리
        return bmiTo1DecimalPlace
        
    }
    
     mutating func calculateBMI(height: Float, weight: Float) {
         let bmiValue = weight / pow(height, 2)
         
         if bmiValue < 18.5 {
             bmi = BMI(value: bmiValue, advice: "Eat more bro", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
         } else if bmiValue < 24.9 {
                 bmi = BMI(value: bmiValue, advice: "Keep goin bro", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
         } else {
             bmi = BMI(value: bmiValue, advice: "Stop eating bro", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
         }
         
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
