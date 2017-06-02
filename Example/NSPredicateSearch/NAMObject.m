//
//  NAMObject.m
//  NSPredicateSearch
//
//  Created by Narlei A Moreira on 02/06/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import "NAMObject.h"

@implementation NAMObject

-(instancetype)initWithName:(NSString *)pName identifier:(NSString *)pIdentifier address:(NSString *)pAddress {
    self.name = pName;
    self.identifier = pIdentifier;
    self.address = pAddress;
    
    return self;
}


- (NSString *)searchTerms {
    return [NSString stringWithFormat:@"%@ %@ %@",self.name, self.identifier, self.address];
}

@end
