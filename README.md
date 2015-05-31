# Polaris

Polaris provides you a method of polarity analysis.

I use dataset offered by Tokyo Institute of Technology.  

[Semantic Orientations of Words](http://www.lr.pi.titech.ac.jp/~takamura/pndic_en.html)

## requirement

this program need sqlite3 and natto(mecab). please run

```shell
bundle install
```

to install these plugin. you may have to install [mecab](http://taku910.github.io/mecab/)

## Build

Using [rake](https://github.com/ruby/rake) for building a model

in this repository, plase run

```shell
bundle exec rake build
```

Then,

```ruby
ruby main.rb
```
or
```ruby
bundle exec ruby main.rb
```

input a sentense
```
今日はなんだか眠いし帰りたいな
```

programm gives an output
```
value is -0.6434137286656811. (this value have from -1 to 1)
```

I use sinusoidal synthesis to calculate a value.

## reference

Hiroya Takamura, Takashi Inui, Manabu Okumura,
"Extracting Semantic Orientations of Words using Spin Model", In Proceedings of the 43rd Annual Meeting of the Association for Computational Linguistics (ACL2005) , pages 133--140, 2005.
