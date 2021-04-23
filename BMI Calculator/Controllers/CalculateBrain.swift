
import UIKit

struct CalculateBrain {
    
    var bmi: BMI?
   
    mutating func calculateBMI (height: Float, weight: Float){
       let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more chips", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "You are fit!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else if bmiValue > 24.9{
            bmi = BMI(value: bmiValue, advice: "Eat less chips!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String{
        let bmiToDecimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToDecimal
    }
    
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "Nada"
        return advice
    }
    
    func getColor() -> UIColor {
        let color = bmi?.color ?? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        return color
    }
}
