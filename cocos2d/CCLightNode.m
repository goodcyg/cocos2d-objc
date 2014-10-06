//
//  CCLightNode.m
//  cocos2d-ios
//
//  Created by Thayer J Andrews on 10/3/14.
//
//

#import "CCLightNode.h"


@implementation CCLightNode

-(id)init
{
    return [self initWithType:CCLightNodePoint color:[CCColor whiteColor] intensity:1.0f ambientColor:[CCColor whiteColor] ambientIntensity:0.5f];
}


-(id)initWithType:(CCLightNodeType)type color:(CCColor *)color intensity:(float)intensity ambientColor:(CCColor *)ambientColor ambientIntensity:(float)ambientIntensity
{
    if ((self = [super init]))
    {
        _type = type;
        _color = color.ccColor4f;
        _intensity = intensity;
        _ambientColor = ambientColor;
        _ambientIntensity = ambientIntensity;
    }
    
    return self;
}

+(id)lightWithType:(CCLightNodeType)type color:(CCColor *)color intensity:(float)intensity ambientColor:(CCColor *)ambientColor ambientIntensity:(float)ambientIntensity
{
    return [[self alloc] initWithType:type color:color intensity:intensity ambientColor:ambientColor ambientIntensity:ambientIntensity];
}

@end
