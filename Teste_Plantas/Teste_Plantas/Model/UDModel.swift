//
//  UDModel.swift
//  Teste_Plantas
//
//  Created by Lucca Lopes on 27/03/23.
//

import Foundation

class UDModel {
    var userDefaults = UserDefaults.standard
    var dataInicial: Date = Date()
    
    
    init(){
//        clearDataBase()
        if !receberData() {
            let data: Date = Date()
            definirData(data: data)
        }
    }
    
    var dias: [Int : [Bool]] = [:]
    
    public func definirData(data: Date){
        userDefaults.set(data, forKey: "DataInicial")
    }
    
    public func atualizarDias(dias: [Int : [Bool]]){
        userDefaults.set(dias, forKey: "Dias")
    }
    
    func receberData() -> Bool {
        guard let load = userDefaults.object(forKey: "DataInicial") as? Date else { return false }
        dataInicial = load
        return true
    }
    
    func receberDias() {
        guard let load = userDefaults.object(forKey: "Dias") as? [Int : [Bool]] else { return }
        dias = load
    }
    
    func clearDataBase(){
        userDefaults.set(nil, forKey: "DataInicial")
        userDefaults.set(nil, forKey: "Dias")
    }
}
