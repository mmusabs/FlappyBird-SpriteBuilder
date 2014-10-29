#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta
{
    // Increment time since last obstacle was added
    timeSInceObstacle += delta; //delta is approx. 1/60
    
    if (timeSinceObstacle > 2.0f){
        //Add a new obstacle
        [self addObstacle];
        
        //Then reset the timer
        timeSInceObstacle = 0.0f;
    }
    
}

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event
{
    [character flap];
}

@end
