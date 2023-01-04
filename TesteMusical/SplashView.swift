//
//  SplashView.swift
//  TesteMusical
//
//  Created by Elton Freitas on 21/09/22.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State var iphone = UserDefaults.standard.bool(forKey: "iphone")
    
    func validarModelo() -> Bool{
        if UIDevice.current.localizedModel == "iPad" {
            self.iphone = false
            return false
        }
        return true
    }
    
    let jaExecutou = UserDefaults.standard.bool(forKey: "primeiraVez")
    
    var body: some View {
        
        if isActive && !jaExecutou {
            OnboardingView()
        } else if isActive && jaExecutou{
            MiniChallenge()
        }else {
            VStack {
                VStack {
                    Image("appstore")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .cornerRadius(40)
                    Text("É o Tom")
                        .font(.system(size: 40, weight: .heavy, design: .rounded))
                        .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886).opacity(0.8))
                }
                
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                    UserDefaults.standard.set(validarModelo(), forKey: "iphone")
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

