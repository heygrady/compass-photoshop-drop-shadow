Compass plugin to make it easier to work with Photoshop Drop Shadows. You can check out the oginal blog post on [Recreating Photoshop Drop Shadows in CSS3 and Compass](http://heygrady.com/blog/2011/08/06/recreating-photoshop-drop-shadows-in-css3-and-compass/).

## Installation
#### Install the Ruby Gem.
```
gem install compass-photoshop-drop-shadow
```

####Existing Compass Projects
You can include it in any existing Compass project by including the grid in your config.rb file.

```ruby
# Require any additional compass plugins here.
require 'compass-photoshop-drop-shadow'
```

#### New Compass Projects
You can install the grid plugin as part of a new Compass project.

```
compass create my_project -r compass-photoshop-drop-shadow
```

## Usage

```scss
@import 'photoshop-drop-shadow';
```

## Mixins

- **photoshop-drop-shadow (** *[$angle: 0]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]* **)** - Replicates a PhotoShop Drop Shadow.
- **photoshop-inner-shadow (** *[$angle: 0]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]* **)** - Replicates a PhotoShop Inner Shadow.
- **photoshop-text-shadow (** *[$angle: 0]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]* **)** - Replicates a PhotoShop Text Shadow. Please note that `$spread` has no effect for text shadows
- **photoshop-outer-glow (** *[$choke: 0]*, *[$size: 0]*, *[$color: #fff]* **)** - *Expirimental* Replicates a Photoshop Outer Glow. Please note that noise, technique, source: center, and quality are not supported.
- **photoshop-inner-glow (** *[$choke: 0]*, *[$size: 0]*, *[$color: #fff]* **)** - *Expirimental* Replicates a Photoshop Inner Glow. Please note that noise, technique, source: center, and quality are not supported.

## Functions

- **photoshop-shadow (** *[$angle: 0]*, *[$distance: 0]*, *[$spread: 0]*, *[$size: 0]*, *[$color: #000]*, *[$inner: false]* **)** - Replicates a PhotoShop Drop Shadow. This function is used by all of the mixins and can also be used for multiple shadows.
- **photoshop-glow (** *[$choke: 0]*, *[$size: 0]*, *[$color: #fff]*, [$inner: false] **)** - *Expirimental* Replicates a PhotoShop Glow. This is used by the experimental glow mixins. Please note that noise, technique, source: center, and quality are not supported.