#import "MainScene.h"

@implementation MainScene

-(void) startGame {
    CCLOG(@"INICIADO O TOCA NAVIO...");
    CCScene *gamePlay = [CCBReader loadAsScene:@"GamePlay"];
    [[CCDirector sharedDirector] pushScene:gamePlay withTransition:[CCTransition transitionFadeWithDuration:0.33]];
}
@end
