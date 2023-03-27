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
    var dias: [Int : [Bool]] = [:]
    
    public func definirData(){
        userDefaults.set(Date(), forKey: "DataInicial")
    }
    
    public func atualizarDias(dias: [Int : [Bool]]){
        userDefaults.set(dias, forKey: "Dias")
    }
    
    func receberData() {
        guard let load = userDefaults.object(forKey: "DataInicial") as? Date else { return }
        dataInicial = load
    }
    
    func receberDias() {
        guard let load = userDefaults.object(forKey: "Dias") as? [Int : [Bool]] else { return }
        dias = load
    }
}
