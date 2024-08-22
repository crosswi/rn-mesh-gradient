#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
 
@interface RCT_EXTERN_MODULE(RNMeshGradient, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(points, NSArray)
RCT_EXPORT_VIEW_PROPERTY(colors, NSArray)
RCT_EXPORT_VIEW_PROPERTY(isAnimated, NSBoolean)
RCT_EXPORT_VIEW_PROPERTY(animatedColors, NSArray)
RCT_EXPORT_VIEW_PROPERTY(frequency, NSNumber)
 
@end
