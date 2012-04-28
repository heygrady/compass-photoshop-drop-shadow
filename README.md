Compass plugin to make it easier to work with Photoshop Drop Shadows. Allows you to take the values directly from the Photoshop style dialog and create an identical shadow in pure CSS. Works for Drop Shadow, Inner Shadow, Drop Shadows on text and has some basic support for Inner and Outer Glow.

- [Original Gist](https://gist.github.com/1039282)
- [Recreating Photoshop Drop Shadows in CSS3 and Compass](http://heygrady.com/blog/2011/08/06/recreating-photoshop-drop-shadows-in-css3-and-compass/)

## Installation
#### Install the Ruby Gem.
```
gem install compass-photoshop-drop-shadow
```

#### Existing Compass Projects
You can include it in any existing Compass project by including the plugin in your config.rb file.

```ruby
# Require any additional compass plugins here.
require 'compass-photoshop-drop-shadow'
```

#### New Compass Projects
You can install the plugin as part of a new Compass project.

```
compass create my_project -r compass-photoshop-drop-shadow
```

## Usage

```scss
@import 'photoshop-drop-shadow';
```

### Examples

```scss
// make sure the mixins are imported
@import 'photoshop-drop-shadow';

// Simple shadow
div.box-shadow {
  @include photoshop-drop-shadow(120, 5px, 0, 5px, rgba(#000, 0.75));
}

// Inner shadow
div.inner-box-shadow {
  @include photoshop-inner-shadow(120, 5px, 0, 5px, rgba(#000, 0.75));
}

// Supporting multiple shadows
div.multiple-box-shadow {
  @include box-shadow(
    photoshop-shadow(120, 5px, 0, 5px, rgba(#000, 0.75)),
    photoshop-shadow(120, 5px, 0, 5px, rgba(#000, 0.75), inset)
  );
}

// Text Shadow
h1 {
  // NOTE: $spread has no effect for text shadows
  @include photoshop-text-shadow(120, 5px, 0, 5px, rgba(#000, 0.75));
}

// Multiple Text Shadow
h2 {
  @include text-shadow(
    photoshop-text-shadow(120, 5px, 0, 5px, rgba(#000, 0.75)),
    photoshop-text-shadow(-60, 5px, 0, 5px, rgba(#300, 0.75))
  );
}
```

### Variables
- **$photoshop-global-light:** *120deg* - Used for the default angle on all shadows. Glow does not use global light.

### Functions

- **photoshop-shadow (** *[$angle: $photoshop-global-light]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]*, *[$inner: false]* **)** - Replicates a PhotoShop Drop Shadow. This function is used by all of the mixins and can also be used for multiple shadows.
- **photoshop-text-shadow (** *[$angle: $photoshop-global-light]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]* **)** - Replicates a PhotoShop Drop Shadow when applied to text. This function is used by the `photoshop-text-shadow` mixin and can also be used for applying multiple shadows. This function is also useful for use with plugins such as the [textshadow jQuery plugin](https://github.com/heygrady/textshadow). Please note that `$spread` has no effect for CSS `text-shadow`.
- **photoshop-glow (** *[$choke: 0]*, *[$size: 0]*, *[$color: #fff]*, [$inner: false] **)** - *Experimental* Replicates a PhotoShop Glow. This is used by the experimental glow mixins. Please note that noise, technique, source: center, and quality are not supported.

### Mixins

- **photoshop-drop-shadow (** *[$angle: $photoshop-global-light]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]* **)** - Replicates a PhotoShop Drop Shadow. Please note that blend mode and quality are not supported.
  - `$angle` - Degrees, unit is optional. Units other than `deg` are not supported.
  - `$distance` - Length in pixels, unit required.
  - `$spread` - Percentage, unit optional, can be expresses as a decimal.
  - `$size` - Length in pixels, unit required.
  - `$color` - Color, can be hex, rgb, rgba or hsla. Blend mode is not supported. CSS Opacity is essentially equivalent to "Blend Mode: Normal." "Blend Mode: Multiply" is the same as "normal" when placed over a white background. For an approximation of blend modes in CSS (using the dominant background color), you might try to the experimental [blend modes plugin](https://github.com/heygrady/scss-blend-modes). Dynamic blend modes are not possible in CSS because they require per-pixel color blending.
- **photoshop-inner-shadow (** *[$angle: $photoshop-global-light]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]* **)** - Replicates a PhotoShop Inner Shadow. Please note that blend mode and quality are not supported.
- **photoshop-text-shadow (** *[$angle: $photoshop-global-light]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]* **)** - Replicates a PhotoShop Drop Shadow when applied to a text layer. Please note that `$spread` has no effect for CSS `text-shadow`. There is an open task in [Firefox to support the spread radius for text shadow](https://bugzilla.mozilla.org/show_bug.cgi?id=655590). In Photoshop, `text-shadow` is applied by adding a Drop Shadow to a text layer. Inner Shadow or `inset` is not supported on `text-shadow`. For text-shadow support in IE9 and below, consider the [textshadow jQuery plugin](https://github.com/heygrady/textshadow). Please note that blend mode and quality are not supported.
- **photoshop-outer-glow (** *[$choke: 0]*, *[$size: 0]*, *[$color: #fff]* **)** - *Experimental* Replicates a Photoshop Outer Glow. Please note that noise, gradient, technique, and quality are not supported.
- **photoshop-inner-glow (** *[$choke: 0]*, *[$size: 0]*, *[$color: #fff]* **)** - *Experimental* Replicates a Photoshop Inner Glow. Please note that noise, gradient, technique, source: center, and quality are not supported.
