# LYPeacock
## Installation
To install the pod, add following line to your Podfile:

```objectivec
    pod "Peacock"
```

## Usage
Peacock extends the existing properties that you can set with the UIAppearance protocol. In a way that you can effectively configure more than what UIView subclasses will allow you.

#### What is UIAppearance
It's a protocol that allows us to set some properties of UIView subclasses in an "asynchronous" way.
We configure our subclasses and at the same time take out the styling code from the View Controllers / subviews. The OS will be in charge of applying the desired style just before he adds a view to the Screen.

Basic usage:

```objectivec
	[[UILabel appearance] setBackgroundColor:[UIColor whiteColor]];
```

Most of the custom created properties start with Lyst prefix LY.

```objectivec
    [[LYTitleLabel appearanceWhenContainedIn:[LYProductView class], nil] setLYFont:TitleFont];
```

There's a [short video](https://vimeo.com/115883292)  and [blog post](//todo.url.of.blog.post.of.lystq) on how-to's and best practices for UIAppearance and Peacock.

### Creating a theme file
We highly recommend creating a class to hold all your UI-styling code in a CSS-like fashion. And calling it as soon as possible when your app launches.

Import the global header file Peacock.h on any of your implementation files.

```objectivec
	#import "Peacock.h"
```

### Configuring your Views
Peacock extends the available configurations of the appearance protocol. It's implementation should help configure all your views frome a single location keeping your views and controllers clean of UI-styling code.

Those are the properties and methods that Peacock extends so they can be available through the [UIAppearance protocol](https://developer.apple.com/library/prerelease/ios/documentation/UIKit/Reference/UIAppearance_Protocol/index.html).

### TL;TR;
The following is a list of the current classes that we have extended and their available properties.

### Buttons
Available methods and properties to set buttons:

```objectivec
	-(void)setLYFont:(UIFont *)font forState:(UIControlState)state;
	-(void)setLYTextColor:(UIColor *)textColor forState:(UIControlState)state;
	-(void)setLYTextAlignment:(NSTextAlignment)textAlignment forState:(UIControlState)state;
	@property (nonatomic, strong) UIColor *appearanceTintColor
```

### Labels
Available properties for Labels
:
```objectivec
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
```

### NavigationBAr
Available properties for NavigationBar:

```objectivec
	@property(nonatomic,assign,getter=isLYTranslucent) NSInteger LYTranslucent;
```

### TableView
Available properties for TableViews:

```objectivec
	@property (nonatomic, strong) UIColor *appearanceSeparatorColor;
```

### TextField
Available properties for TextField:

```objectivec
	@property (nonatomic, strong) UIFont* LYAppearanceFont;
	@property (nonatomic, strong) UIColor* LYAppearanceTextColor;
	@property (nonatomic, assign) NSTextAlignment LYAppearanceTextAlignment;
```

### TextView
Available Properties for TextView:

```objectivec
	@property (nonatomic, strong) UIFont* LYAppearanceFont;
	@property (nonatomic, strong) UIColor* LYAppearanceTextColor;
	@property (nonatomic, assign) NSTextAlignment LYAppearanceTextAlignment;
```

## Author
Lyst [Engineering team](http://developers.lyst.com/).

[@MakingLyst](https://twitter.com/MakingLyst)

## License
Lyst Peacock is available under the MIT license. See the LICENSE file for more info.
