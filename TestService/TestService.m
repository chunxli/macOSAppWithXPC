//
//  TestService.m
//  TestService
//
//  Created by Kevin Li on 2021/2/9.
//

#import "TestService.h"

@implementation TestService

// This implements the example protocol. Replace the body of this class with the implementation of this service's protocol.
- (void)upperCaseString:(NSString *)aString withReply:(void (^)(NSString *))reply {
    NSString *response = [aString uppercaseString];
    reply(response);
}

@end
