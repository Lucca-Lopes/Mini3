//
//  UDModel.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 27/03/23.
//

import Foundation

class UserDefaultsModel {
    var userDefaults = UserDefaults.standard
    var girassois: [GirassolModel] = []
    
    init(){
//        clearDataBase()
        receberGirassois()
    }
    
    public func atualizarGirassois(girassois: [GirassolModel]){
        do {
            let encodedData = try JSONEncoder().encode(girassois)
            userDefaults.set(encodedData, forKey: "Girassois")
        }
        catch {
            print(error)
        }
    }
    
    func receberGirassois() {
        guard let load = userDefaults.object(forKey: "Girassois") as? Data else { return }
        do{
            let girassoisDecodados = try JSONDecoder().decode([GirassolModel].self, from: load)
            self.girassois = girassoisDecodados
        } catch{
            print(error)
        }
        
    }
    
    func clearDataBase(){
        userDefaults.removeObject(forKey: "Girassois")
    }
}
