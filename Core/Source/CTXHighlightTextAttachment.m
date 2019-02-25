//
//  CTXHighlightTextAttachment.m
//  DTCoreText
//
//  Created by Stefan Ceriu on 25/02/2019.
//
//

#import "CTXHighlightTextAttachment.h"

static const NSString *CTXHighlightTextAttachmentUUIDKey = @"CTXHighlightTextAttachmentUUIDKey";
static const NSString *CTXHighlightTextAttachmentContentKey = @"CTXHighlightTextAttachmentContentKey";

@implementation CTXHighlightTextAttachment

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder]) {
        self.uuid = [aDecoder decodeObjectForKey:CTXHighlightTextAttachmentUUIDKey];
        self.content = [aDecoder decodeObjectForKey:CTXHighlightTextAttachmentContentKey];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [super encodeWithCoder:aCoder];
    [aCoder encodeObject:self.uuid forKey:CTXHighlightTextAttachmentUUIDKey];
    [aCoder encodeObject:self.content forKey:CTXHighlightTextAttachmentContentKey];
}

@end
