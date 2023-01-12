//
//  colorpicker.swift
//  trying
//
//  Created by Alanoud Saleh on 07/06/1444 AH.
//
import SwiftUI
import RealityKit

import AVFoundation
import UIKit
struct ColorPickerView: UIViewControllerRepresentable {

    @Binding var color: Color

    func makeCoordinator() -> Coodinator {
        return Coodinator(parent: self)
    }

    func makeUIViewController(context: Context) -> UIColorPickerViewController {
        let picker = UIColorPickerViewController()
        picker.supportsAlpha = false
        picker.selectedColor = UIColor(color)

        picker.delegate = context.coordinator

        return picker
    }

    func updateUIViewController(_ uiViewController: UIColorPickerViewController, context: Context) {
    }

    class Coodinator: NSObject, UIColorPickerViewControllerDelegate {

        var parent: ColorPickerView

        init(parent: ColorPickerView) {
            self.parent = parent
        }

        func colorPickerViewControllerDidFinish(_ viewController: UIColorPickerViewController) {
            parent.color = Color(viewController.selectedColor)
        }

        func colorPickerViewController(_ viewController: UIColorPickerViewController, didSelect color: UIColor, continuously: Bool) {
            parent.color = Color(color)
        }
    }
}

import SwiftUI
import RealityKit

struct ARViewContainer: UIViewRepresentable {

    func makeUIView(context: Context) -> ARView {
        return ARView(frame: .zero)
    }

    func updateUIView(_ uiView: ARView, context: Context) {}
}

struct ARColorPickerView: View {

    @State private var color: Color = .white

    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
                .ignoresSafeArea()

            VStack {
                ARViewContainer()
                ColorPickingButton(color: $color)
            }
        }
    }
}


