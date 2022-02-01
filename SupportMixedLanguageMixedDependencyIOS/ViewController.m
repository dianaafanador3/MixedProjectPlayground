//
//  ViewController.m
//  SupportMixedLanguageMixedDependencyIOS
//
//  Created by Diana Maria Perez Afanador on 1/2/22.
//

#import "ViewController.h"
#import "SupportMixedLanguageMixedDependencyIOS-Swift.h"

@interface ViewController ()

@end

@implementation TestObject
+ (NSString *)primaryKey {
    return @"identifier";
}

+ (nonnull NSArray<NSString *> *)requiredProperties {
    return @[@"identifier", @"name"];
}

- (instancetype)initWithIdentifier:(NSString *)identifier
                              name:(NSString *)name {
    if (self = [super init]) {
        self.identifier = identifier;
        self.name = name;
        return self;
    }
    return nil;

}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    RLMRealm *realm = [RLMRealm realmWithConfiguration:[RLMRealmConfiguration defaultConfiguration] error:nil];
    [realm beginWriteTransaction];
    [realm addObject:[[TestObject alloc]initWithIdentifier:[NSUUID UUID].UUIDString name: @"Diana"]];
    [realm commitWriteTransaction];

    NewViewController* newViewController = [[NewViewController alloc]init];
}

@end
