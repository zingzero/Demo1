//
//  GameScene.m
//  Demo1
//
//  Created by Zing on 13-5-29.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "GameScene.h"


@implementation GameScene

+(id)scene{
    CCScene *scene = [CCScene node];
    CCLayer *layer = [GameScene node];
    [scene addChild:layer];
    return scene;
}

-(id) init
{
    if ((self = [super init])) {
        CCLOG(@"%@ : %@", NSStringFromSelector(_cmd), self);
        CGSize screenSize = [[CCDirector sharedDirector]winSize];
        
        CCSprite *sprite = [CCSprite spriteWithFile:@"Icon-72.png"];

        CGFloat imageHeight = [sprite texture].contentSize.height;
        sprite.position = CGPointMake(screenSize.width/ 2, imageHeight/ 2);
        [self addChild:sprite];
        
        CCSprite *sprite1 = [CCSprite spriteWithFile:@"fps_images.png"];
        
        sprite1.position = CGPointMake(screenSize.width/ 2, screenSize.height/ 2);
        sprite1.anchorPoint = CGPointMake(0.5f, 0.5f);
        [self addChild:sprite1];
        
        CCLabelTTF* label = [CCLabelTTF labelWithString:@"hello" fontName:@"AppleGothic" fontSize:25];
        label.position = CGPointMake(screenSize.width/2,screenSize.height/2);
        label.color = ccc3(255 , 255 , 255);
        label.anchorPoint = CGPointMake(0.5f, 0.5f);
        [self addChild:label z:100];
        
    }
    return self;
}


-(void)dealloc
{
    CCLOG(@"%@ : %@", NSStringFromSelector(_cmd), self);
    [super dealloc];
}

@end
