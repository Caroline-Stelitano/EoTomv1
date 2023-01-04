//
//  Instrumento.swift
//  TesteMusical
//
//  Created by rebeca rodrigues on 02/09/22.
//

import SwiftUI

struct Instrumento: Identifiable {
    let id = UUID().uuidString
    let imagem: Image
    let audio1: URL
    let audio2: URL
    let audio3: URL
}

let instrumentos: [Instrumento] = [
    Instrumento(imagem: Image("Violão"),
                audio1: Bundle.main.url(forResource: "Sound/violao-cai", withExtension: "mp3")!,
                audio2: Bundle.main.url(forResource: "Sound/violao-ciranda", withExtension: "mp3")!,
                audio3: Bundle.main.url(forResource: "Sound/violao-barata", withExtension: "mp3")!),
    Instrumento(imagem: Image("Teclado"),
                audio1: Bundle.main.url(forResource: "Sound/piano-cai", withExtension: "mp3")!,
                audio2: Bundle.main.url(forResource: "Sound/piano-ciranda", withExtension: "mp3")!,
                audio3: Bundle.main.url(forResource: "Sound/piano-barata", withExtension: "mp3")!),
    Instrumento(imagem: Image("Guitarra"),
                audio1: Bundle.main.url(forResource: "Sound/guitarra-cai", withExtension: "mp3")!,
                audio2: Bundle.main.url(forResource: "Sound/guitarra-ciranda", withExtension: "mp3")!,
                audio3: Bundle.main.url(forResource: "Sound/guitarra-barata", withExtension: "mp3")!),
    Instrumento(imagem: Image("Gaita"),
                audio1: Bundle.main.url(forResource: "Sound/gaita-cai", withExtension: "mp3")!,
                audio2: Bundle.main.url(forResource: "Sound/gaita-ciranda", withExtension: "mp3")!,
                audio3: Bundle.main.url(forResource: "Sound/gaita-barata", withExtension: "mp3")!),
    Instrumento(imagem: Image("Baixo"),
                audio1: Bundle.main.url(forResource: "Sound/baixo-cai", withExtension: "mp3")!,
                audio2: Bundle.main.url(forResource: "Sound/baixo-ciranda", withExtension: "mp3")!,
                audio3: Bundle.main.url(forResource: "Sound/baixo-barata", withExtension: "mp3")!),
    Instrumento(imagem: Image("Saxofone"),
                audio1: Bundle.main.url(forResource: "Sound/sax-cai", withExtension: "mp3")!,
                audio2: Bundle.main.url(forResource: "Sound/sax-ciranda", withExtension: "mp3")!,
                audio3: Bundle.main.url(forResource: "Sound/sax-barata", withExtension: "mp3")!),
    Instrumento(imagem: Image("Violino"),
                audio1: Bundle.main.url(forResource: "Sound/violino-cai", withExtension: "mp3")!,
                audio2: Bundle.main.url(forResource: "Sound/violino-ciranda", withExtension: "mp3")!,
                audio3: Bundle.main.url(forResource: "Sound/violino-barata", withExtension: "mp3")!)
]
