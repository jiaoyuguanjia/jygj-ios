//
//  UIColor+Hex.m
//  jygj
//
//  Created by teacher.im on 14-11-30.
//  Copyright (c) 2014年 teacher.im. All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *) colorWithHex:(NSString *)hexString {
    
    if (!hexString)
        return nil;
    
    hexString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    hexString = [hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    hexString = [hexString uppercaseString];
    
    
    if (hexString.length > 6)
        return nil;
    
    float firstPairInt, secondPairInt, thirdPairInt;
    NSString *firstPairString, *secondPairString, *thirdPairString;
    
    firstPairString = [hexString substringToIndex:2];
    secondPairString = [[hexString substringFromIndex:2] substringToIndex:2];
    thirdPairString = [[hexString substringFromIndex:4] substringToIndex:2];
    
    NSString *firstLetter, *secondLetter, *thirdLetter, *fourthLetter, *fifthLetter, *sixthLetter;
    
    firstLetter = [firstPairString substringToIndex:1];
    secondLetter = [[firstPairString substringFromIndex:1] substringToIndex:1];
    thirdLetter = [secondPairString substringToIndex:1];
    fourthLetter = [[secondPairString substringFromIndex:1] substringToIndex:1];
    fifthLetter = [thirdPairString substringToIndex:1];
    sixthLetter = [[thirdPairString substringFromIndex:1] substringToIndex:1];
    
    NSArray *letters = [NSArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"A", @"B", @"C", @"D", @"E", @"F", nil];
    NSArray *numbers = [NSArray arrayWithObjects:@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"11", @"12", @"13", @"14", @"15", nil];
    
    int firstLetterInt = 0, secondLetterInt = 0, thirdLetterInt = 0, fourthLetterInt = 0, fifthLetterInt = 0, sixthLetterInt = 0;
    
    for (int i = 0; i < [letters count]; i++) {
        if ([firstLetter isEqualToString:[letters objectAtIndex:i]]) {
            firstLetterInt = [[numbers objectAtIndex:i] intValue];
        }
        if ([secondLetter isEqualToString:[letters objectAtIndex:i]]) {
            secondLetterInt = [[numbers objectAtIndex:i] intValue];
        }
        if ([thirdLetter isEqualToString:[letters objectAtIndex:i]]) {
            thirdLetterInt = [[numbers objectAtIndex:i] intValue];
        }
        if ([fourthLetter isEqualToString:[letters objectAtIndex:i]]) {
            fourthLetterInt = [[numbers objectAtIndex:i] intValue];
        }
        if ([fifthLetter isEqualToString:[letters objectAtIndex:i]]) {
            fifthLetterInt = [[numbers objectAtIndex:i] intValue];
        }
        if ([sixthLetter isEqualToString:[letters objectAtIndex:i]]) {
            sixthLetterInt = [[numbers objectAtIndex:i] intValue];
        }
    }
    
    firstPairInt = ((firstLetterInt * 16) + secondLetterInt) / 255.0f;
    
    secondPairInt = ((thirdLetterInt * 16) + fourthLetterInt) / 255.0f;
    
    thirdPairInt = ((fifthLetterInt * 16) + sixthLetterInt) / 255.0f;
    
    return [UIColor colorWithRed:firstPairInt green:secondPairInt blue:thirdPairInt alpha:1.0];
    
}

@end
