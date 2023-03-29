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
    var dias: [Int : [Bool]] = [:]
    
    init(){
//        clearDataBase()
        if !receberData() {
            let data: Date = Date()
            definirData(data: data)
        }
        receberDias()
    }
    
    public func definirData(data: Date){
        userDefaults.set(data, forKey: "DataInicial")
    }
    
    public func atualizarDias(dias: [Int : [Bool]]){
        do {
            let encodedData: Data = try NSKeyedArchiver.archivedData(withRootObject: dias, requiringSecureCoding: false)
            userDefaults.set(encodedData, forKey: "Dias")
        }
        catch {
            print(error)
        }
    }
    
    func receberData() -> Bool {
        guard let load = userDefaults.object(forKey: "DataInicial") as? Date else { return false }
        dataInicial = load
        return true
    }
    
    func receberDias() {
        guard let load = userDefaults.dictionary(forKey: "Dias") as? [Int: [Bool]] else { return }
        dias = load
//        do{
//            let decodeDict = try NSKeyedUnarchiver.unarchivedObject(ofClass: NSDictionary.self, from: load)
//            dias = decodeDict as! [Int : [Bool]]
//        } catch{
//            print(error)
//        }
        
    }
    
    func clearDataBase(){
        userDefaults.set(nil, forKey: "DataInicial")
        userDefaults.set(nil, forKey: "Dias")
    }
}
