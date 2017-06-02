//
//  NAMObject.h
//  NSPredicateSearch
//
//  Created by Narlei A Moreira on 02/06/17.
//  Copyright © 2017 Narlei A Moreira. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NAMObject : NSObject


@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* identifier;
@property (strong, nonatomic) NSString* address;

@property (strong, nonatomic) NSString* searchTerms;



-(instancetype)initWithName:(NSString *)pName identifier:(NSString *)pIdentifier address:(NSString *)pAddress;

@end
