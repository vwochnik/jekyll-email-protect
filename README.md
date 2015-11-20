# Jekyll Email Protect [![Gem Version](https://badge.fury.io/rb/jekyll-email-protect.png)](http://badge.fury.io/rb/jekyll-email-protect)

> Email protection liquid filter for Jekyll

Jekyll Email Protect is an email protection liquid filter which can be used to obfuscate `mailto:` links to protect an email address from span bots.

## Installation

This plugin is available as a [RubyGem][ruby-gem].

Add this line to your application's `Gemfile`:

```
gem 'jekyll-email-protect'
```

And then execute the `bundle` command to install the gem.

Alternatively, you can also manually install the gem using the following command:

```
$ gem install jekyll-email-protect
```

After the plugin has been installed successfully, add the following lines to your `_config.yml` in order to tell Jekyll to use the plugin:

```
gems:
- jekyll-email-protect
```

## Getting Started

In your markup, simply use the `protect_email` liquid filter made available through this plugin:

```
{{ 'example@example.com' | protect_email }}
```

# Contribute

Fork this repository, make your changes and then issue a pull request. If you find bugs or have new ideas that you do not want to implement yourself, file a bug report.

# Copyright

Copyright (c) 2015 Vincent Wochnik.

License: MIT

[ruby-gem]: https://rubygems.org/gems/jekyll-language-plugin
