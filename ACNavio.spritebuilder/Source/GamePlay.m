//
//  GamePlay.m
//  ACNavio
//
//  Created by Raul Cesar Teixeira on 3/2/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "GamePlay.h"
@interface GamePlay()
    @property (nonatomic) CCNode *navio;

@end



@implementation GamePlay
-(void) move {
    //for now make square jump...
    CGPoint forceDirection = ccp(0.3, 1.0);
    CGPoint impulse = ccpMult(forceDirection, 100);
    [self.navio.physicsBody applyImpulse:impulse];
}

-(void) didLoadFromCCB {
    self.userInteractionEnabled = YES;
}

-(void) touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    [self move];
}

-(void) update:(CCTime)delta {
    //clamp vel.
    CGFloat yVelocity = clampf(self.navio.physicsBody.velocity.y, -1 * MAXFLOAT, 200.0f);
    CGFloat xVelocity = clampf(self.navio.physicsBody.velocity.x, -1 * MAXFLOAT, 200.0f);
    self.navio.physicsBody.velocity = ccp(xVelocity, yVelocity);
}
@end
