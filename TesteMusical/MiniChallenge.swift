//
//  MiniChallenge.swift
//  TesteMusical
//
//  Created by Elton Freitas on 02/09/22.
//
import AVKit
import AVFAudio
import SwiftUI

struct MiniChallenge: View {
    
    @State var countDownTimer = 0
    @State var timerRunning = false
    @State var audioPlayer: AVAudioPlayer?
    @State var posicao = 0
    @State var fundo = Color(red: 1, green: 0.804, blue: 0.972)
    @State var rosa = true
    @State var amarelo = false
    @State var azul = false
    @State var animacao = false
    @State var animacaoExecutando = false
    @State var repeticao = 0
    @State var aux = 0
    @State var iphone = UserDefaults.standard.bool(forKey: "iphone")
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    func playSoundAndAnimation() {
        self.audioPlayer?.play()
        self.animacao = true
    }
    
    func stopSoundAndAnimation() {
        self.audioPlayer?.stop()
        self.countDownTimer = 0
    }
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    
                    //MARK: - Botão para acessar o menu
                    NavigationLink(destination: {
                        Menu()
                    }, label: {
                        Image(systemName: "info.circle")
                        
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                            .frame(minWidth: iphone ? 20 : 50, maxWidth: iphone ? 30 : 50, minHeight: iphone ? 20 : 50, maxHeight: iphone ? 30 : 50, alignment: .trailing)
                            .padding(iphone ? 20 : 40)
                    }).simultaneousGesture(TapGesture().onEnded{stopSoundAndAnimation()})
                        .navigationBarHidden(true)
                        .navigationBarTitle("Voltar")
                    
                }
                
                HStack {
                    
                    //MARK: - Botão da seta para esquerda
                    Button(action: {
                        posicao -= 1
                        if(posicao < 0) {
                            posicao = instrumentos.count - 1
                        }
                        stopSoundAndAnimation()
                        self.countDownTimer = 0
                    }, label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 32, weight: .medium))
                            .foregroundColor(Color(red: 0.602, green: 0.272, blue: 0.883))
                    })
                    
                    Spacer()
                    
                    //MARK: - Botão do instrumento
                    Button(action: {
                        if (self.animacao) {
                            stopSoundAndAnimation()
                            self.countDownTimer = 0
                            
                        } else {
                            let sound: URL
                            if (self.rosa == true) {
                                sound = instrumentos[posicao].audio1
                            } else if (self.amarelo == true) {
                                sound = instrumentos[posicao].audio2
                            } else {
                                sound = instrumentos[posicao].audio3
                            }
                            self.audioPlayer = try! AVAudioPlayer(contentsOf: sound)
                            self.repeticao = Int(self.audioPlayer!.duration.rounded())
                            self.countDownTimer = repeticao
                            
                            self.timerRunning = true
                            playSoundAndAnimation()
                        }
                    }, label: {
                        instrumentos[posicao].imagem
                            .resizable()
                            .padding()
                            .frame(minWidth: iphone ? 250 : 350, maxWidth: iphone ? 400 : 500, minHeight: iphone ? 300 : 550, maxHeight: iphone ? 650 : 850, alignment: .trailing)
                            .opacity(1.0)
                            .scaleEffect(animacaoExecutando ? 1.2 : 1.0)
                        
                    })
                    .onChange(of: posicao) {_ in
                        stopSoundAndAnimation()
                    }
                    .onChange(of: animacao) {_ in
                        if (self.animacao) {
                            withAnimation(.easeInOut(duration: 1).repeatCount(repeticao)){
                                animacaoExecutando.toggle()
                            }
                        } else {
                            withAnimation {
                                animacaoExecutando.toggle()
                            }
                        }
                    }
                    
                    Spacer()
                    
                    //MARK: - Botão da seta para direita
                    Button (action: {
                        posicao += 1
                        if(posicao == instrumentos.count){
                            posicao = 0
                        }
                        stopSoundAndAnimation()
                        self.countDownTimer = 0
                    }, label: {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 32, weight: .medium))
                            .foregroundColor(Color(red: 0.602, green: 0.272, blue: 0.883))
                    })
                }
                .padding()
                
                Spacer()
                
                //MARK: - Botões para trocar músicas e fundo
                HStack(spacing: iphone ? 20 : 80) {
                    
                    //Botão rosa
                    Button(action: {
                        fundo = Color(red: 1, green: 0.804, blue: 0.972)
                        rosa = true
                        amarelo = false
                        azul = false
                        stopSoundAndAnimation()
                        self.countDownTimer = 0
                    }, label: {
                        Image("nota 1")
                            .frame(width: 80, height: 80, alignment: .center)
                            .background(Color(red: 0.89, green: 0.043, blue: 0.769))
                            .cornerRadius(20)
                            .opacity(rosa == true ? 1.2 : 1)
                        
                    })
                    
                    //Botão amarelo
                    Button(action: {
                        fundo = Color(red: 0.95, green: 0.908, blue: 0.724)
                        amarelo = true
                        rosa = false
                        azul = false
                        stopSoundAndAnimation()
                        self.countDownTimer = 0
                    }, label: {
                        Image("nota 2")
                            .frame(width: 80, height: 80, alignment: .center)
                            .background(Color(red: 0.89, green: 0.741, blue: 0.09))
                            .cornerRadius(20)
                            .opacity(amarelo == true ? 1.2 : 1.0)
                    })
                    
                    //Botão azul
                    Button(action: {
                        fundo = Color(red: 0.775, green: 0.778, blue: 1)
                        azul = true
                        rosa = false
                        amarelo = false
                        stopSoundAndAnimation()
                        self.countDownTimer = 0
                    }, label: {
                        Image("nota 3")
                            .frame(width: 80, height: 80, alignment: .center)
                            .background(Color(red: 0.043, green: 0.055, blue: 0.89))
                            .cornerRadius(20)
                            .opacity(azul == true ? 1.2 : 1.0)
                    })
                }
                .padding()
                
            }
            //MARK: - Timer para saber quando parar a animação
            .onReceive(timer) { _ in
                if self.countDownTimer > 0 && timerRunning {
                    self.countDownTimer -= 1
                    self.animacao = true
                } else {
                    self.animacao = false
                }
            }
            .background(iphone ? Image("background") : Image("backgroundiPad"))
            .background(fundo)
            
        }.navigationViewStyle(.stack)
        
    }
}

struct MiniChallenge_Previews: PreviewProvider {
    static var previews: some View {
        MiniChallenge()
    }
}


