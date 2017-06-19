//
//  CTXGapFillTextAttachment.m
//  DTCoreText
//
//  Created by Stefan Ceriu on 15/06/2017.
//
//

#import "CTXGapFillTextAttachment.h"

static const NSString *CTXGapFillTextAttachmentUUIDKey = @"CTXGapFillTextAttachmentUUIDKey";
static const NSString *CTXGapFillTextAttachmentContentKey = @"CTXGapFillTextAttachmentContentKey";

@implementation CTXGapFillTextAttachment

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super initWithCoder:aDecoder]) {
        self.uuid = [aDecoder decodeObjectForKey:CTXGapFillTextAttachmentUUIDKey];
        self.content = [aDecoder decodeObjectForKey:CTXGapFillTextAttachmentContentKey];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.uuid forKey:CTXGapFillTextAttachmentUUIDKey];
    [aCoder encodeObject:self.content forKey:CTXGapFillTextAttachmentContentKey];
}

@end
