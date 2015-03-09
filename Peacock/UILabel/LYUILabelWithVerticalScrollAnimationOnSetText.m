//
//  Created by Michael May on 26/06/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import "LYUILabelWithVerticalScrollAnimationOnSetText.h"

@interface LYUILabelWithVerticalScrollAnimationOnSetText ()
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) CGFloat animationYOffset;
@end

@implementation LYUILabelWithVerticalScrollAnimationOnSetText

- (void)drawTextInRect:(CGRect)rect
{
    CGRect textRect = rect;
    textRect.origin.y += self.animationYOffset;
    
    [super drawTextInRect:textRect];
}

-(void)animateUp:(NSTimer*)timer
{
    if(self.superview == nil) {
        [timer invalidate];
        return;
    }

    if(self.animationYOffset <= 0.0f) {
        [timer invalidate];
        return;
    }
    
    self.animationYOffset -= 1.0f;
    [self setNeedsDisplay];
}

-(void)setAttributedText:(NSAttributedString *)attributedText
{
    [super setAttributedText:attributedText];
    
    self.animationYOffset = self.font.lineHeight;

    dispatch_async(dispatch_get_main_queue(),(^{
        CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(animateUp:)];
        [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    }));
    
}

@end
