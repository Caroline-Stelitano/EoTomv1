//
//  Musica.swift
//  TesteMusical
//
//  Created by Elton Freitas on 21/09/22.
//

import SwiftUI

struct Musica: View {
    var body: some View {
        ScrollView {
            VStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 120, height: 5, alignment: .center)
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                    .opacity(0.7)
                
                    .padding(.bottom, 20)
                
                Image(systemName: "speaker.wave.2.circle")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                
                    .padding(.bottom, 20)
                
                Text("Músicas")
                    .font(.system(size: 17, design: .rounded))
                    .bold()
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                
                    .padding(.bottom, 20)
                
                HStack {
                    Image("btn_1")
                        .padding(.leading, 50)
                    Text("Cai, Cai, Balão")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .font(.system(size: 15, design: .rounded))
                        .foregroundColor(Color(red: 0.89, green: 0.043, blue: 0.769))
                    
                }
                
                HStack {
                    Image("btn_2")
                        .padding(.leading, 50)
                    Text("Ciranda Cirandinha")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .font(.system(size: 15, design: .rounded))
                        .foregroundColor(Color(red: 0.89, green: 0.741, blue: 0.09))
                    
                }
                
                HStack {
                    Image("btn_3")
                        .padding(.leading, 50)
                    Text("A Barata Diz Que Tem")
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                        .font(.system(size: 15, design: .rounded))
                        .foregroundColor(Color(red: 0.043, green: 0.055, blue: 0.89))
                    
                }
            }
            .padding()
        }
    }
}

struct Musica_Previews: PreviewProvider {
    static var previews: some View {
        Musica()
    }
}

