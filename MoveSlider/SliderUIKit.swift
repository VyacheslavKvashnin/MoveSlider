//
//  SliderUIKit.swift
//  MoveSlider
//
//  Created by Вячеслав Квашнин on 23.04.2022.
//

import SwiftUI

struct SliderUIKit: UIViewRepresentable {
    
    @Binding var currentValue: Float
    let alpha: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.addNewValue),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: CGFloat(alpha) / 100)
        uiView.value = currentValue
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $currentValue)
    }
}

extension SliderUIKit {
    class Coordinator: NSObject {
        @Binding var value: Float
        
        init(value: Binding<Float>) {
            self._value = value
        }
        
        @objc func addNewValue(_ sender: UISlider) {
            value = sender.value
        }
    }
}

struct SliderUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SliderUIKit(currentValue: .constant(2.0), alpha: 2)
    }
}
