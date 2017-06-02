//
//  NSPredicate.m
//  Narlei Moreira
//
//  Created by Narlei A Moreira on 22/05/17.
//  Copyright © 2017 Narlei Moreira. All rights reserved.
//

#import "NSPredicate+Search.h"

@implementation NSPredicate (Search)


/**
 @brief Create a Smart Search to filter an array of objects
 
 @author Narlei Moreira
 

 @code
 
 // Código de Exemplo
 
 <#
 let predicate = NSPredicate(search: query, searchTerm: "name")
 self.array.filter(using: predicate!)
 self.array = NSMutableArray(array:self.arrayAll.filtered(using: predicate!))
 #>
 @endcode

 @param pSearch String to search, can contains spaces, case mixed and special characters
 
 @param searchTerm  Property of object to search, recomends create a property with getter and concatenate all importante values in this getter
 
 */
+ (NSPredicate *)predicateWithSearch:(NSString *)pSearch searchTerm:(NSString*)searchTerm{
    
    pSearch = [pSearch stringByReplacingOccurrencesOfString:@"`" withString:@""];
    pSearch = [pSearch stringByReplacingOccurrencesOfString:@"'" withString:@""];
    pSearch = [pSearch stringByReplacingOccurrencesOfString:@"\"" withString:@""];
    
    NSString *compareOr = @" OR";
    
    NSPredicate *predicate;
    
    NSString *stringWhere = @"(1 == 2)";
    int countOr = [self getWordCount:pSearch delimitador:compareOr];
    for (int counterA = 1; counterA <= countOr; counterA++) {
        NSString *partSearch = [self getWordNum:pSearch indice:counterA delimitador:compareOr];
        if (!([partSearch stringByReplacingOccurrencesOfString:@" " withString:@""].length == 0)) {
            
            int countSpaces = [self getWordCount:partSearch delimitador:@" "];
            
            NSString *stringWhereSpaces = @"";
            
            for (int counterB = 1; counterB <= countSpaces; counterB++) {
                NSString *partSearchSpaces = [self getWordNum:partSearch indice:counterB delimitador:@" "];
                if (!([partSearchSpaces stringByReplacingOccurrencesOfString:@" " withString:@""].length == 0)) {
                    partSearchSpaces = [NSString stringWithFormat:@"*%@*", partSearchSpaces];
                    stringWhereSpaces = [NSString stringWithFormat:@"%@ %@ %@ like[cd] '%@' ", stringWhereSpaces, (stringWhereSpaces.length == 0 ? @"" : @" AND "), searchTerm, partSearchSpaces];
                }
            }
            
            stringWhere = [NSString stringWithFormat:@" %@ OR (%@)", stringWhere, stringWhereSpaces];
        }
    }
    predicate = [NSPredicate predicateWithFormat:stringWhere];
    return predicate;
}


+ (NSString *) getWordNum:(NSString *)texto indice:(int) indice delimitador:(NSString *)delimitador{
    texto=[delimitador stringByAppendingString:texto];
    texto=[texto stringByAppendingString:delimitador];
    NSArray *substrings = [texto componentsSeparatedByString:delimitador];
    NSString *first = [substrings objectAtIndex:indice];
    return first;
}


+ (int) getWordCount :(NSString *)texto delimitador:(NSString *)delimitador{
    NSArray *substrings = [texto componentsSeparatedByString:delimitador];
    NSString *tamanhoStr=[NSString stringWithFormat:@"%lu",(unsigned long)substrings.count];
    int qtdWord;
    qtdWord = [tamanhoStr intValue];
    return qtdWord;
}

@end
