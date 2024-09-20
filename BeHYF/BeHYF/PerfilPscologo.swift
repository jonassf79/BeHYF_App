//
//  PerfilPscologo.swift
//  BeHYF
//
//  Created by found on 17/09/24.
//

import SwiftUI

struct PerfilPscologo: View {
    var body: some View {
        List{
            HStack{
                Spacer()
                VStack{
                    Image("psicologa")
                        .resizable()
                        .frame(width: 115, height: 115)
                        .clipShape(Circle())
                    Text("Mariana Torres")
                        .font(.title2)
                        .bold()
                }
                Spacer()
            }
            Section{
                VStack {
                    HStack{
                        Text("Sobre o proficional:")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                        Text("Profissional de psicologia com vinte anos de experiência em avaliação psicológica, diagnóstico e tratamento de uma variedade de transtornos mentais. Forte habilidade em estabelecer rapport com os clientes e criar um ambiente de apoio para facilitar a mudança positiva. Especializado em terapia cognitivo-comportamental, mas capaz de integrar abordagens terapêuticas diversas para atender às necessidades individuais dos clientes. Excelente capacidade de comunicação, empatia e ética profissional.")
                }
            }
            Section{
                VStack{
                    HStack{
                        Text("Contato:")
                            .font(.title3)
                            .bold()
                        Spacer()
                    }
                    HStack{
                        Text("+55 85 98458-3263")
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    PerfilPscologo()
}
