//
//  NSPredicate.h
//  Narlei Moreira
//
//  Created by Narlei A Moreira on 22/05/17.
//  Copyright © 2017 Narlei Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSPredicate (Search)


+ (NSPredicate *)predicateWithSearch:(NSString *)pSearch searchTerm:(NSString*)searchTerm;


@end
