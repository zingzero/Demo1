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
    }
    return self;
}


-(void)dealloc
{
    CCLOG(@"%@ : %@", NSStringFromSelector(_cmd), self);
    [super dealloc];
}

@end
