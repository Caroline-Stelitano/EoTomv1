//
//  Menu.swift
//  TesteMusical
//
//  Created by rebeca rodrigues on 02/09/22.
//

import SwiftUI

struct Menu: View {
    
    @State var showModal = false
    @State var showModal2 = false
    @State var showModal3 = false
    @State var showModal4 = false
    @State var showModal5 = false
    @State var fundo = Color(red: 0.9, green: 0.858, blue: 1)
    
    var body: some View {
        //MARK: - Telas do menu
        VStack {
            //Acessar tela de músicas
            HStack {
                Button(action: {
                    showModal5 = true
                }, label: {
                    Image(systemName: "speaker.wave.2.circle")
                    Text("Músicas")
                        .font(.system(size: 17, design: .rounded))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    
                })
                .foregroundColor(.white)
                .background(Color(red: 0.478, green: 0.004, blue: 0.886))
                .buttonStyle(.bordered)
                .cornerRadius(10)
                .buttonBorderShape(.automatic)
                .controlSize(.large)
                
            }
            .sheet(isPresented: $showModal5) {
                ZStack{
                    Color.init(red: 0.9, green: 0.858, blue: 1).edgesIgnoringSafeArea(.all)
                    Musica()
                }
            }
            
            //Acessar tela de tutorial
            HStack {
                Button(action: {
                    showModal4 = true
                }, label: {
                    Image(systemName: "questionmark.circle")
                    Text("Tutorial")
                        .font(.system(size: 17, design: .rounded))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    
                })
                .foregroundColor(.white)
                .background(Color(red: 0.478, green: 0.004, blue: 0.886))
                .buttonStyle(.bordered)
                .cornerRadius(10)
                .buttonBorderShape(.automatic)
                .controlSize(.large)
                
            }
            .sheet(isPresented: $showModal4) {
                ZStack{
                    Color.init(red: 0.9, green: 0.858, blue: 1).edgesIgnoringSafeArea(.all)
                    Tutorial()
                }
            }
            
            //Acessar tela de sobre
            HStack {
                Button(action: {
                    showModal = true
                }, label: {
                    Image(systemName: "person.circle")
                    Text("Sobre")
                        .font(.system(size: 17, design: .rounded))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    
                })
                .foregroundColor(.white)
                .background(Color(red: 0.478, green: 0.004, blue: 0.886))
                .buttonStyle(.bordered)
                .cornerRadius(10)
                .buttonBorderShape(.automatic)
                .controlSize(.large)
            }
            .sheet(isPresented: $showModal) {
                ZStack{
                    Color.init(red: 0.9, green: 0.858, blue: 1).edgesIgnoringSafeArea(.all)
                    Sobre()
                }
            }
            
            //Acessar tela de direitos
            HStack {
                Button(action: {
                    showModal3 = true
                }, label: {
                    Image(systemName: "c.circle")
                    Text("Direitos autorais")
                        .font(.system(size: 17, design: .rounded))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    
                })
                .foregroundColor(.white)
                .background(Color(red: 0.478, green: 0.004, blue: 0.886))
                .buttonStyle(.bordered)
                .cornerRadius(10)
                .buttonBorderShape(.automatic)
                .controlSize(.large)
                
            }
            .sheet(isPresented: $showModal3) {
                ZStack{
                    Color.init(red: 0.9, green: 0.858, blue: 1).edgesIgnoringSafeArea(.all)
                    Direitos()
                }
            }
            
            //Acessar tela de politica
            HStack {
                Button(action: {
                    showModal2 = true
                }, label: {
                    Image(systemName: "lock")
                    Text("Política de privacidade")
                        .font(.system(size: 17, design: .rounded))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                })
                .foregroundColor(.white)
                .background(Color(red: 0.478, green: 0.004, blue: 0.886))
                .buttonStyle(.bordered)
                .cornerRadius(10)
                .buttonBorderShape(.automatic)
                .controlSize(.large)
            }
            .sheet(isPresented: $showModal2) {
                ZStack{
                    Color.init(red: 0.9, green: 0.858, blue: 1).edgesIgnoringSafeArea(.all)
                    Politica()
                }
            }
            
            Spacer()
        }
        .navigationTitle("Informações")
        
        .navigationBarTitleDisplayMode(.inline)
        .padding()
        .background(Color(red: 0.9, green: 0.858, blue: 1))
    }
    
}

struct ModalView: View {
    var body: some View {
        VStack {
            Text("Teste")
        }
        .background(Color(red: 0.9, green: 0.858, blue: 1).ignoresSafeArea(.all))
    }
}

struct ModalView2: View {
    var body: some View {
        Text("")
    }
}

struct ModalView3: View {
    var body: some View {
        Text("")
    }
}

struct ModalView4: View {
    var body: some View {
        Text("")
    }
}

struct ModalView5: View {
    var body: some View {
        Text("")
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
