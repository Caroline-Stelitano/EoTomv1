//
//  Sobre.swift
//  TesteMusical
//
//  Created by rebeca rodrigues on 05/09/22.
//

import SwiftUI

struct Sobre: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 120, height: 5, alignment: .center)
                        .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                        .opacity(0.7)
                    
                        .padding(.bottom, 20)
                    
                    Image(systemName: "person.circle")
                        .font(.system(size: 40, weight: .semibold))
                        .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                    
                        .padding(.bottom, 20)
                    
                    Text("Sobre")
                        .font(.system(size: 20, design: .rounded))
                        .bold()
                        .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                    
                        .padding(.bottom, 15)
                    
                    Text("""
                    O App foi idealizado para crianças, a fim de auxiliar no processo de musicalização na infância de forma lúdica e divertida. Com uma variedade de instrumentos e músicas presentes no cotidiano, o App promove momentos de descontração enquanto contribui no desenvolvimento da criança.
                    """)
                    .font(.system(size: 15))
                    .multilineTextAlignment(.leading)
                    
                }
                .padding()
            }
        }
        .background(Color(red: 0.9, green: 0.858, blue: 1))
    }
}

struct Sobre_Previews: PreviewProvider {
    static var previews: some View {
        Sobre()
    }
}
