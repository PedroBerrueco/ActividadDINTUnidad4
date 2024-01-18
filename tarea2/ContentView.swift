import SwiftUI

struct ContentView: View {
    
    @State private var searchText = "" //Para la barra de busqueda
    
    let gridItem:[GridItem] = Array(repeating: .init(.flexible()),count:2) //Array de Items del Grid
    
    var body: some View {
        
        NavigationStack{ //Pila de navegacion dentro iran los iconos de la APP
            ScrollView { //Anidamos dentro de un ScrollView
                
                LazyVGrid(columns: gridItem, spacing: 30) { //LzyGrid para que no cargue el contenido hasta el final
                    ForEach(Film.sampleData) { item in
                            VStack { //PRIMERA FILA
                                NavigationLink(destination: DetailView(film: item)){ //A donde navegamos y que le pasamos
                                    
                                    ZStack { //Para Suponer Poner iconos imagen y puntuacion dentro
                                        Image(uiImage: UIImage(named: item.image)!)
                                            .resizable()
                                            .scaledToFill()
                                            .padding(8)
                                        
                                        VStack(alignment: .leading) {
                                            Spacer() // Empuja el contenido hacia la parte superior izquierda
                                            
                                            HStack {
                                                Spacer() // Empuja el contenido hacia la parte superior izquierda
                                                Text(String(describing: item.score))
                                                    .foregroundColor(.white)
                                                    .padding(8)
                                                    .background(Color.redCarpet)
                                                    .clipShape(Circle())
                                                    .offset(x: 0, y: -240) // Ajusta la posición del círculo
                                            }
                                        }
                                    }

                                    
                                }
                                Text(item.name)
                                    .padding(1)
                                HStack{ //Categorias al ser un Array recibe trato especial al pintarlo
                                    ForEach(item.categories, id: \.self) { category in
                                        Text(category)
                                            .background(.gray)
                                            .opacity(0.7)
                                            .cornerRadius(10)
                                            
                                        
                                    }
                                }
                                
                            }
                        
                    }
                }.searchable(text: $searchText) {
                    Text("Buscar pelicula")}
            }.navigationTitle("FilmView") //Titulo
        }
    }
}

#Preview {
    ContentView()
}
