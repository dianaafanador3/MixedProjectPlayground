//
//  TestFile.swift
//  SupportMixedLanguageMixedDependencyIOS
//
//  Created by Diana Maria Perez Afanador on 1/2/22.
//

import Foundation
import Realm

extension TestObject {
    class func getLatest() -> TestObject? {
        let realm = try! RLMRealm(configuration: RLMRealmConfiguration.default(), queue: nil)
        return TestObject.allObjects(in: realm).firstObject() as? TestObject
    }
}
