//
//  ValidationView.swift
//  AtividadeExpressaoRegular
//
//  Created by Rafael Schmitt on 03/04/23.
//

import SwiftUI

struct ValidationView: View {
    
    @StateObject private var viewModel = ValidationViewViewModel()
    
    var body: some View {
        VStack(spacing: 30) {
            Picker("Estratégia de validação:", selection: $viewModel.currentMode) {
                Text("Expressão regular").tag(0)
                Text("Whitelist").tag(1)
            }
            .frame(width: 350)
            
            HStack(spacing: 20) {
                TextField("Digite uma data no formato dd/mm/aaaa", text: $viewModel.input)
                
                Button("Validar") {
                    viewModel.validateInput()
                }
            }
            .frame(width: 350)
            
            HStack(spacing: 20) {
                Text("Resultado:")
                Text(viewModel.result)
                    .foregroundColor(viewModel.result == "OK!" ? .green : .red)
            }
        }
        .padding()
    }
}

struct ValidationView_Previews: PreviewProvider {
    
    static var previews: some View {
        ValidationView()
    }
}
