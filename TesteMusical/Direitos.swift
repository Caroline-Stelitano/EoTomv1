//
//  Direitos.swift
//  TesteMusical
//
//  Created by rebeca rodrigues on 05/09/22.
//

import SwiftUI

struct Direitos: View {
    var body: some View {
        VStack {
            ScrollView {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 120, height: 5, alignment: .center)
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                    .opacity(0.7)
                
                    .padding(.bottom, 20)
                
                Image(systemName: "c.circle")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                
                    .padding(.bottom, 20)
                
                Text("Direitos autorais")
                    .font(.system(size: 20, design: .rounded))
                    .bold()
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                
                    .padding(.bottom, 10)
                
                Text("""
                    Todos os direitos relacionados a imagem, arte, ideação, marca e divulgação do App estão reservados a seus criadores: Aline Reis, Caroline Stelitano, Elton Freitas e Rebeca Primo.
                    
                    Todos os direitos relacionados a sonoplastia, arranjo e melodia estão reservados ao músico Cesar Castro. As músicas utilizadas são de Domínio Público e foram recriadas pelo mesmo.
                    
                    © 2022 É o Tom. Todos os direitos reservados.
                    """)
                .font(.system(size: 15))
                .multilineTextAlignment(.leading)
            }
            .padding()
        }
        .background(Color(red: 0.9, green: 0.858, blue: 1))
    }
}

struct Direitos_Previews: PreviewProvider {
    static var previews: some View {
        Direitos()
    }
}
