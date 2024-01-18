//
//  DetailView.swift
//  tarea2
//
//  Created by user245657 on 1/18/24.
//

import SwiftUI

struct DetailView: View {
    let film: Film
    
    var body: some View {
        ScrollView{
            VStack{
                Image(uiImage: UIImage(named: film.image)!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    //.frame(maxHeight: 200) // Ajusta la altura máxima según tus necesidades
                    .padding(2)
            }
            VStack(alignment: .leading) {
                HStack{
                    Text(film.name)
                        .padding(2)
                    Spacer(minLength: 2)
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        .padding(2)
                        .font(.system(size: 30))
                }
                Text(film.date)
                    .foregroundColor(.redCarpet)
                    .padding(2)
                
                Spacer()
                Text("Sinopsis")
                    .foregroundColor(.gray)
                    .opacity(1.2)
                    .padding(2)
                Text(film.sinopsis)
                    .padding(2)
                Spacer()
                Text("Generos")
                    .foregroundColor(.gray)
                    .opacity(1.2)
                    .padding(2)
                HStack{ //Categorias al ser un Array recibe trato especial al pintarlo
                    ForEach(film.categories, id: \.self) { category in
                        Text(category)
                            .background(.gray)
                            .opacity(0.7)
                            .cornerRadius(10)
                            .padding(2)

                    }
                }

            }
        }
       
    }
    
}





