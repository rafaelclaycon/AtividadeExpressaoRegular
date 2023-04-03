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
        if isInputValid() {
            result = "OK!"
        } else {
            result = "Entrada inválida"
        }
    }
    
    func isInputValid() -> Bool {
        guard !input.isEmpty else { return false }
        guard input.contains("/") else { return false }
        let range = NSRange(location: 0, length: input.utf16.count)
        let regex = try! NSRegularExpression(pattern: "[0-3]{1}[0-9]{1}\\/(0[1-9]|1[0-2])\\/[0-9]{4,4}$")
        return regex.firstMatch(in: input, options: [], range: range) != nil
    }
}
