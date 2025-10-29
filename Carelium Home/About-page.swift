//
//  About-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct About: View {
    @Binding var isPresented:Bool
    var body: some View {
        VStack{
            Text("Coming Soon...")
                .font(.largeTitle)
                .bold()
        }
        
    }
}
#Preview{
    About(isPresented: .constant(true))
}
