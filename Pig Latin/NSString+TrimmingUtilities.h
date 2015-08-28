//
//  NSString+TrimmingUtilities.h
//  Pig Latin
//
//  Created by asu on 2015-08-28.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TrimmingUtilities)
-(NSString*)stringByTrimmingStartingCharactersWithCharacterSet:(NSCharacterSet *)set;
-(NSString*)stringByTrimmingTrailingCharactersWithCharacterSet:(NSCharacterSet *)set;
@end
