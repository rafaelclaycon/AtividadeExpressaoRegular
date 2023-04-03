//
//  ValidationViewViewModel.swift
//  AtividadeExpressaoRegular
//
//  Created by Rafael Schmitt on 03/04/23.
//

import Combine
import Foundation

class ValidationViewViewModel: ObservableObject {
    
    @Published var currentMode: Int
    @Published var input: String
    @Published var result: String
    
    init(currentMode: Int = 0, input: String = "") {
        self.currentMode = currentMode
        self.input = input
        self.result = ""
    }
    
    func validateInput() {
        if currentMode == 0 {
            result = isInputValid_RegularExpression() ? "OK!" : "Entrada inválida"
        } else {
            result = isInputValid_Whitelist() ? "OK!" : "Entrada inválida"
        }
    }
    
    func isInputValid_RegularExpression() -> Bool {
        guard !input.isEmpty else { return false }
        guard input.contains("/") else { return false }
        let range = NSRange(location: 0, length: input.utf16.count)
        let regex = try! NSRegularExpression(pattern: "[0-3]{1}[0-9]{1}\\/(0[1-9]|1[0-2])\\/[0-9]{4,4}$")
        return regex.firstMatch(in: input, options: [], range: range) != nil
    }
    
    func isInputValid_Whitelist() -> Bool {
        guard !input.isEmpty else { return false }
        guard input.contains("/") else { return false }
        guard input.count == 10 else { return false }
        
        let delimiter = "/"
        let components = input.components(separatedBy: delimiter)
        let day = components[0]
        let month = components[1]
        let year = components[2]
        
        guard day.count == 2 else { return false }
        guard month.count == 2 else { return false }
        guard year.count == 4 else { return false }
        
        guard let dayAsInt = Int(day), dayAsInt > 0, dayAsInt < 32 else { return false }
        guard let monthAsInt = Int(month), monthAsInt > 0, monthAsInt < 13 else { return false }
        guard let yearAsInt = Int(year), yearAsInt > 0, yearAsInt < 10000 else { return false }
        
        return true
    }
}
