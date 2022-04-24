//
//  SliderUIKit.swift
//  MoveSlider
//
//  Created by Вячеслав Квашнин on 23.04.2022.
//

import SwiftUI

struct SliderUIKit: UIViewRepresentable {
    
    @Binding var value: Float
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.setValue(0.5, animated: true)
        
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        
    }
}

struct SliderUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SliderUIKit(value: .constant(2.0))
    }
}
