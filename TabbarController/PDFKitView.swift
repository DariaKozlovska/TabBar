//
//  PDFKitView.swift
//  TabbarController
//
//  Created by Daria Kozlovska on 28/03/2025.
//

import SwiftUI
import UIKit
import PDFKit

struct PDFKitViewContent: View {
    var body: some View {
        NavigationView{
            PDFKitView(pdfFile: "Lista-1")
        }
    }
}

struct PDFKitView: UIViewRepresentable{
    let pdfFile: String
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true
        
        if let url = Bundle.main.url(forResource: pdfFile, withExtension: ".pdf"){
            pdfView.document = PDFDocument(url: url)
        }
        return pdfView
    }
    
    func updateUIView(_ uiView: PDFView, context: Context) {}
}

#Preview {
    PDFKitViewContent()
}
