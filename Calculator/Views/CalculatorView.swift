//
//  CalculatorView.swift
//  Calculator
//
//  Created by Gulliver Raed on 4/10/25.
//

import SwiftUI

//MARK: - Body

struct CalculatorView: View {
    
    var buttonTypes: [[CalculatorButton]] {
        [
            [.allClear, .negative, .percentage, .operation(.division)],
            [.digit(.seven), .digit(.eight), .digit(.nine), .operation(.multiplication)],
            [.digit(.four), .digit(.five), .digit(.six), .operation(.subtraction)],
            [.digit(.one), .digit(.two), .digit(.three), .operation(.addition)],
            [.digit(.zero), .decimal, .equals]
        ]
    }
    
    var body: some View {
        VStack{
            //Space above result
            Spacer()
            
            //Result
            displayText
            
            //Buttons
            buttonPad

        }
        .background(Color.black)
        
    }
}

//MARK: - Previews

#Preview {
    CalculatorView()
}

//MARK: - Components

extension CalculatorView {
    
    private var displayText: some View {
        Text("0")
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .foregroundStyle(Color.white)
            .padding()
    }
    
    private var buttonPad : some View {
        VStack{
            ForEach(buttonTypes, id: \.self) { row in
                HStack{
                    ForEach(row, id: \.self) { buttonType in
                        Button(buttonType.description){}
                    }
                }
            }
        }
    }
}
