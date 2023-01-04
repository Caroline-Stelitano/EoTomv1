//
//  OnboardingView.swift
//  TesteMusical
//
//  Created by Elton Freitas on 16/09/22.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var fundo = Color(red: 1, green: 0.804, blue: 0.972)
    
    @State var isLastView = false
    @State var ultimaView = imagens.count - 1
    @State var viewAtual = 0
    @State var iphone = UserDefaults.standard.bool(forKey: "iphone")
    
    var body: some View {
        
        if isLastView{
            MiniChallenge()
        } else {
            VStack{
                TabView {
                    ForEach(imagens) { testando in
                        
                        ZStack(alignment: .topLeading){
                            
                            Image(testando.imagem)
                                .resizable()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .ignoresSafeArea()
                            
                            Button {
                                self.isLastView = true
                            } label: {
                                Image(systemName: "xmark")
                                    .padding(.top, iphone ? 30 : 70)
                                    .padding(.leading, 30)
                                    .font(.system(size: iphone ? 30 : 50, weight: .black))
                                    .frame(alignment: .topLeading)
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                    }
                    
                }
                .ignoresSafeArea()
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .never))
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    UserDefaults.standard.set(true, forKey: "primeiraVez")
                }
            }
        }
        
    }
    
    func validar(){
        if self.viewAtual == ultimaView{
            self.isLastView = true
        } else {
            self.viewAtual += 1
        }
    }
}

let imagens: [Teste] = [Teste(imagem: "TutorialTela1"), Teste(imagem: "TutorialTela2"), Teste(imagem: "TutorialTela3"), Teste(imagem: "TutorialTela4"), Teste(imagem: "TutorialTela5")]

struct Teste: Identifiable {
    let id = UUID().uuidString
    let imagem: String
    
    init(imagem: String) {
        self.imagem = imagem
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
