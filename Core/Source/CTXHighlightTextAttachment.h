//
//  CTXHighlightTextAttachment.h
//  DTCoreText
//
//  Created by Stefan Ceriu on 25/02/2019.
//
//

#import "DTTextAttachment.h"

@interface CTXHighlightTextAttachment : DTTextAttachment

@property (nonatomic, strong) NSString *uuid;

@property (nonatomic, strong) NSAttributedString *content;

@end
