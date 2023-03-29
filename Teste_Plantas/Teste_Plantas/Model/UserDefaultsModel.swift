//
//  UDModel.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 27/03/23.
//

import Foundation

class UserDefaultsModel {
    var userDefaults = UserDefaults.standard
    var dataInicial: Date = Date()
    var dias: [DiaModel] = []
    var cultivoIniciado: Bool = false
    
    init(){
//        clearDataBase()
        receberCultivoIniciado()
        receberDias()
        
        if !receberData() && cultivoIniciado {
            let data: Date = Date()
            definirData(data: data)
        }
    }
    
    public func definirCultivoIniciado(cultivoIniciado: Bool){
        userDefaults.set(cultivoIniciado, forKey: "CultivoIniciado")
    }
    
    public func definirData(data: Date){
        userDefaults.set(data, forKey: "DataInicial")
    }
    
    public func atualizarDias(dias: [DiaModel]){
        do {
            let encodedData = try JSONEncoder().encode(dias)
            userDefaults.set(encodedData, forKey: "Dias")
        }
        catch {
            print(error)
        }
    }
    
    func receberCultivoIniciado(){
        guard let load = userDefaults.object(forKey: "CultivoIniciado") as? Bool else { return }
        cultivoIniciado = load
    }
    
    func receberData() -> Bool {
        guard let load = userDefaults.object(forKey: "DataInicial") as? Date else { return false }
        dataInicial = load
        return true
    }
    
    func receberDias() {
        guard let load = userDefaults.object(forKey: "Dias") as? Data else { return }
        do{
            let diasDecodados = try JSONDecoder().decode([DiaModel].self, from: load)
            dias = diasDecodados
        } catch{
            print(error)
        }
        
    }
    
    func clearDataBase(){
//        userDefaults.removeObject(forKey: "DataInicial")
//        userDefaults.removeObject(forKey: "CultivoIniciado")
        userDefaults.removeObject(forKey: "Dias")
    }
}
