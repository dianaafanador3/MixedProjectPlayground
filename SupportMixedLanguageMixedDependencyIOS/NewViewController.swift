//
//  NewViewController.swift
//  SupportMixedLanguageMixedDependencyIOS
//
//  Created by Diana Maria Perez Afanador on 1/2/22.
//

import Foundation
import RealmSwift
import Realm
import UIKit
import Alamofire

class NewViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let realm = try! Realm(configuration: Realm.Configuration.defaultConfiguration)
        try! realm.write {
            let object = TestObject.getLatest()
            print(object ?? "")
        }

        let rlmRealm = try! RLMRealm(configuration: RLMRealmConfiguration.default(), queue: nil)
        rlmRealm.beginWriteTransaction()
        let newTestObject = TestObject(identifier: UUID().uuidString, name: "Noone")!
        rlmRealm.add(newTestObject)
        try! rlmRealm.commitWriteTransaction()

    }
}
