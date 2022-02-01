//
//  ViewController.h
//  SupportMixedLanguageMixedDependencyIOS
//
//  Created by Diana Maria Perez Afanador on 1/2/22.
//

#import <UIKit/UIKit.h>
#import <Realm/Realm.h>

@interface ViewController : UIViewController
@end

@interface TestObject: RLMObject
@property NSString *identifier;
@property NSString *name;

- (instancetype)initWithIdentifier:(NSString *)identifier
                              name:(NSString *)name;
@end

