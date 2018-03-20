//
//  Loader.m
//  FBMemoryProfiler-Droar
//
//  Created by Nathan Jangula on 10/26/17.
//

#import "Loader.h"
#import <Droar/Droar-Swift.h>
#import <FBMemoryProfiler_Droar/FBMemoryProfiler_Droar-Swift.h>

@implementation Loader

+ (void)load {
    SEL selector = NSSelectorFromString(@"sharedInstance");
    if ([FBMemoryProfiler_Droar respondsToSelector:selector])
    {
        [Droar register:[FBMemoryProfiler_Droar performSelector:selector]];
    }
}

@end
