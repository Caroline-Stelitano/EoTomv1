//
//  Tutorial.swift
//  TesteMusical
//
//  Created by rebeca rodrigues on 08/09/22.
//

import SwiftUI

struct Tutorial: View {
    
    @State var fundo = Color(red: 1, green: 0.804, blue: 0.972)
    
    private let imagens: [Teste] = [Teste(imagem: "tutorial1"), Teste(imagem: "tutorial2"), Teste(imagem: "tutorial3"), Teste(imagem: "tutorial4"), Teste(imagem: "tutorial5")]
    
    var body: some View {
        
        VStack{
            TabView {
                ForEach(imagens) { testando in
                    Image(testando.imagem)
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea()
                }
            }
            .ignoresSafeArea()
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .never))
        }
    }
}

struct Tutorial_Previews: PreviewProvider {
    static var previews: some View {
        Tutorial()
    }
}
