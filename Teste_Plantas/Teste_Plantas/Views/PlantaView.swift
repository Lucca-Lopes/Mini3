import SwiftUI

struct PlantaView: View {
    
//    @State private var selectedPlant: CardPlantaModel
    
    let plantas: [CardPlantaModel] = [
        CardPlantaModel(id: 1, nome: "João", dia: "1", imagem: Image("girassol1")),
        CardPlantaModel(id: 2, nome: "Maria", dia: "10", imagem: Image("girassol2")),
        CardPlantaModel(id: 3, nome: "Pedro", dia: "15", imagem: Image("girassol3"))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
                    ForEach(plantas, id: \.id) { planta in
                        CardPlantaView(cardPlantaModel: planta)
                    }
                }
            }
        }
    }
}
