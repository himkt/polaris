# Polaris

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
[![Website](https://img.shields.io/website-up-down-green-red/http/shields.io.svg?maxAge=2592000)](https://rubygems.org/gems/polaris-nlp)
[![GitHub issues](https://img.shields.io/github/issues/himkt/polaris.svg)](https://github.com/himkt/polaris/issues)
[![GitHub stars](https://img.shields.io/github/stars/himkt/polaris.svg)](https://github.com/himkt/polaris/stargazers) 
[![GitHub release](https://img.shields.io/github/release/qubyte/rubidium.svg?maxAge=2592000)](https://github.com/himkt/polaris) 
[![GitHub commits](https://img.shields.io/github/commits-since/SubtitleEdit/subtitleedit/3.4.7.svg?maxAge=2592000)](https://github.com/himkt/polaris)

natural language processing / polarity analysis--

Polaris provides methods for polarity analysis (semantic orientations).  

I use a dataset offered by the Tokyo Institute of Technology.  

[Semantic Orientations of Words](http://www.lr.pi.titech.ac.jp/~takamura/pndic_en.html)  

Gem Interface

## Requirements

* mecab

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'polaris/nlp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install polaris-nlp

## Usage

### Init

```ruby

require 'polaris/nlp'
Polaris::Nlp.init

```

### Calculate polarity

```ruby
require 'polaris/nlp'
puts Polaris::Nlp.calc_polarity("I'm happy !")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/polaris-nlp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

