//
//  DTHTMLElementBR.m
//  DTCoreText
//
//  Created by Oliver Drobnik on 26.12.12.
//  Copyright (c) 2012 Drobnik.com. All rights reserved.
//

#import "DTBreakHTMLElement.h"

@implementation DTBreakHTMLElement

- (NSAttributedString *)attributedString
{
	@synchronized(self)
	{
		if([self _isChildOfList]) {
			return nil;
		}
		
		NSDictionary *attributes = [self attributesForAttributedStringRepresentation];
		return [[NSAttributedString alloc] initWithString:UNICODE_LINE_FEED attributes:attributes];
	}
}

- (BOOL)_isChildOfList
{
	DTHTMLElement *parent = self.parentElement;
	
	if (parent.displayStyle == DTHTMLElementDisplayStyleListItem)
	{
		return YES;
	}
	
	if (parent.displayStyle == DTHTMLElementDisplayStyleBlock)
	{
		if ([parent.name isEqualToString:@"ol"] || [parent.name isEqualToString:@"ul"])
		{
			return YES;
		}
	}
	
	return NO;
}

@end
