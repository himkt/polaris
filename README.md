# Polarity analysis

This programm do a polarity analysis.  

I use dataset made public by Tokyo Institute of Technology.  

[Semantic Orientations of Words](http://www.lr.pi.titech.ac.jp/~takamura/pndic_en.html)

## requirement

this program need sqlite3 and natto(mecab). please run

```shell
bundle install
```

to install these plugin. you may have to install [mecab](http://taku910.github.io/mecab/)

## Build

in this repository, plase run

```shell
make build
```

Then,

```ruby
ruby calc_polarity.rb
```
or
```ruby
bundle exec ruby calc_polarity.eb
```

I use sinusoidal synthesis to calculate a value.

## reference

Hiroya Takamura, Takashi Inui, Manabu Okumura,
"Extracting Semantic Orientations of Words using Spin Model", In Proceedings of the 43rd Annual Meeting of the Association for Computational Linguistics (ACL2005) , pages 133--140, 2005.
