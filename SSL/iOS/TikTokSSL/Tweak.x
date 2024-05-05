#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface TTNetworkManager : NSObject
@end
@interface TTNetworkManagerChromium : TTNetworkManager
@end

%hook TTHttpRequestChromium
- (id)initWithURL:(id)arg1 method:(id)arg2 multipartForm:(id)arg3 {
    TTHttpRequestChromium *obj = %orig;
    return obj;
}
%end

%hook TTNetworkManager
- (int)ServerCertificate{
    return 0;
}
%end
