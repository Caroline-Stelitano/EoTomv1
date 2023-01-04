//
//  Politica.swift
//  TesteMusical
//
//  Created by rebeca rodrigues on 05/09/22.
//

import SwiftUI

struct Politica: View {
    var body: some View {
        VStack {
            ScrollView {
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 120, height: 5, alignment: .center)
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                    .opacity(0.7)
                
                    .padding(.bottom, 20)
                
                Image(systemName: "lock")
                    .font(.system(size: 40, weight: .semibold))
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                
                    .padding(.bottom, 20)
                
                Text("Política de privacidade")
                    .font(.system(size: 20, design: .rounded))
                    .bold()
                    .foregroundColor(Color(red: 0.478, green: 0.004, blue: 0.886))
                
                    .padding(.bottom, 20)
                VStack {
                    Text("""
                    Este aplicativo é mantido e operado pelos membros citados nos Diretos Autorais.\n
                    1. Quem deve utilizar nosso aplicativo
                    É recomendado que o uso do aplicativo por pessoas que tenham menos de 18 (dezoito) anos seja mediante o consentimento de pelo menos um de seus pais ou responsável.
                    2. Dados sensíveis
                    Não serão coletados dados sensíveis de nossos usuários, assim entendidos aqueles definidos nos arts. 11 e seguintes da Lei de Proteção de Dados Pessoais.
                    3. Coleta de dados não previstos expressamente
                    Eventualmente, outros tipos de dados não previstos expressamente nesta Política de Privacidade poderão ser coletados, desde que sejam fornecidos com o consentimento do usuário, ou, ainda, que a coleta seja permitida com fundamento em outra base legal prevista em lei.
                    Em qualquer caso, a coleta de dados e as atividades de tratamento dela decorrentes serão informadas aos usuários do aplicativo.
                    4. Compartilhamento de dados pessoais com terceiros
                    Nós não compartilhamos seus dados pessoais com terceiros. Apesar disso, é possível que o façamos para cumprir alguma determinação legal ou regulatória, ou, ainda, para cumprir alguma ordem expedida por autoridade pública.
                    5. Como o titular pode exercer seus direitos
                    Para garantir que o usuário que pretende exercer seus direitos é, de fato, o titular dos dados pessoais objeto da requisição, poderemos solicitar documentos ou outras informações que possam auxiliar em sua correta identificação, a fim de resguardar nossos direitos e os direitos de terceiros. Isto somente será feito, porém, se for absolutamente necessário, e o requerente receberá todas as informações relacionadas.
                    6. Alterações nesta política
                    A presente versão desta Política de Privacidade foi atualizada pela última vez em: 23/09/2022.
                    Reservamo-nos o direito de modificar, a qualquer momento, as presentes normas, especialmente para adaptá-las às eventuais alterações feitas em nosso aplicativo, seja pela disponibilização de novas funcionalidades, seja pela supressão ou modificação daquelas já existentes.
                    Sempre que houver uma modificação, nossos usuários serão notificados acerca da mudança.
                    7. Como entrar em contato conosco
                    Para esclarecer quaisquer dúvidas sobre esta Política de Privacidade ou sobre os dados pessoais que tratamos, entre em contato conosco, por algum dos canais mencionados abaixo:
                    E-mail: eltonrribeiro@hotmail.com
                    Endereço postal: Av. Eng. Eusébio Stevaux, 823 - Santo Amaro, São Paulo - SP. 04696-000
                    """)
                }
                .font(.system(size: 15))
                .multilineTextAlignment(.leading)
            }
            .padding()
        }
        .background(Color(red: 0.9, green: 0.858, blue: 1))
    }
}

struct Politica_Previews: PreviewProvider {
    static var previews: some View {
        Politica()
    }
}
