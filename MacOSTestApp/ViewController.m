//
//  ViewController.m
//  MacOSTestApp
//
//  Created by Kevin Li on 2021/2/9.
//

#import "ViewController.h"
#import "TestService.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)buttonClick:(id)sender {
//
    NSXPCConnection *connection = [[NSXPCConnection alloc]initWithServiceName:@"com.microsoft.appcentercss.TestService"];
    connection.remoteObjectInterface = [NSXPCInterface interfaceWithProtocol:@protocol(TestServiceProtocol)];
    [connection resume];

    TestService *service =  [connection remoteObjectProxyWithErrorHandler:^(NSError * _Nonnull error) {
        NSLog(@"%@",error);
    }];
    
    [service upperCaseString:self.InputT.stringValue withReply:^(NSString * value) {

        dispatch_async(dispatch_get_main_queue(), ^{
            self.OutputL.stringValue = value;
        });

    }];
}


@end
