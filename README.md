# LYPeacock
## Installation

To install the pod, add following line to your Podfile:

    pod "Peacock"
    
## Usage
There's a [short video](https://vimeo.com/115883292)  and [blog post](//todo.url.of.blog.post.of.lystq) on how-to's and best practices for UIAppearance and Peacock.

###Creating a theme file
We highly recomend creating a class to hold all your UI-styling code in a CSS-like fashion. And calling it as soon as possible when your app launches.

Import the global header file Peacock.h on any of your implementation files.

	#import "Peacock.h"
	
###Configuring your Views
Peacock extends the available configurations of the appearance protocol. It's implementation should help configure all your views frome a single location keeping your views and controllers clean of UI-styling code.

Those are the properties and methods that Peacock extends so they can be available throught the [UIAppearance protocol](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIAppearance_Protocol/index.html).

###Buttons
Available methods and properties to set buttons:

	-(void)setLYFont:(UIFont *)font forState:(UIControlState)state;
	-(void)setLYTextColor:(UIColor *)textColor forState:(UIControlState)state;
	-(void)setLYTextAlignment:(NSTextAlignment)textAlignment forState:(UIControlState)state;
	@property (nonatomic, strong) UIColor *appearanceTintColor

###Labels
Available properties for Labels:

	@property (nonatomic, copy) UIFont *appearanceFont;
	@property (nonatomic, copy) UIColor *appearanceTextColor;
	@property (nonatomic, copy) UIColor *appearanceBackgroundColor;
	@property (nonatomic, copy) UIColor *appearanceHighlightedTextColor;
	@property (nonatomic, assign) CGFloat appearanceLineSpacingParagraphStyle;
	@property (nonatomic, copy) UIColor* LYTextColor;
	@property (nonatomic, copy) UIFont* LYFont;
	@property (nonatomic, assign) NSLineBreakMode LYLineBreakMode;
	@property (nonatomic, assign) NSTextAlignment LYTextAlignment;
	@property (nonatomic, assign) CGFloat LYLineSpacing;
	@property (nonatomic, assign) BOOL LYStrikeOut;

###NavigationBAr
Available properties for NavigationBar:

	@property(nonatomic,assign,getter=isLYTranslucent) NSInteger LYTranslucent;
	
###TableView
Available properties for TableViews:

	@property (nonatomic, strong) UIColor *appearanceSeparatorColor;
	
###TextField
Available properties for TextField:

	@property (nonatomic, strong) UIFont* LYAppearanceFont;
	@property (nonatomic, strong) UIColor* LYAppearanceTextColor;
	@property (nonatomic, assign) NSTextAlignment LYAppearanceTextAlignment;

###TextView
Available Properties for TextView:

	@property (nonatomic, strong) UIFont* LYAppearanceFont;
	@property (nonatomic, strong) UIColor* LYAppearanceTextColor;
	@property (nonatomic, assign) NSTextAlignment LYAppearanceTextAlignment;
	
## Author
Lyst [Engineering team](http://developers.lyst.com/).

[@MakingLyst](https://twitter.com/MakingLyst)

## License
Lyst Peacock is available under the MIT license. See the LICENSE file for more info.
