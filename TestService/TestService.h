//
//  TestService.h
//  TestService
//
//  Created by Kevin Li on 2021/2/9.
//

#import <Foundation/Foundation.h>
#import "TestServiceProtocol.h"

// This object implements the protocol which we have defined. It provides the actual behavior for the service. It is 'exported' by the service to make it available to the process hosting the service over an NSXPCConnection.
@interface TestService : NSObject <TestServiceProtocol>
@end
