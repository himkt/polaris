# Polaris

Polaris provides methods for polarity analysis (semantic orientations).

I use a dataset offered by the Tokyo Institute of Technology.  

[Semantic Orientations of Words](http://www.lr.pi.titech.ac.jp/~takamura/pndic_en.html)

## Requirements

This program requires the [sqlite3](https://rubygems.org/gems/sqlite3) and [natto (mecab)](https://rubygems.org/gems/natto) Rubygems. Please run

```shell
bundle install
```

to install these plugins. You may have to install [mecab](http://taku910.github.io/mecab/) as well.

## Build and Use

Using [rake](https://github.com/ruby/rake) for building a model in this repository, please run

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

Input a positive sentence
```
Today is happy day
```

and the program provides output
```
value is 0.781096992929786. (this value have from -1 to 1)
```

Input another sentence, this time negative
```
I have so sad news
```

and the program gives this output
```
value is -0.7682471659724701. (this value have from -1 to 1)
```


Now, input a sentence in Japanese
```
楽しくて素晴らしい、良い一日だ
```

and the program outputs
```
value is 0.9699159788945327. (this value have from -1 to 1)
```

Entering yet another sentence
```
今日はなんだか眠いし帰りたいな
```

and now the program outputs
```
value is -0.6434137286656811. (this value have from -1 to 1)
```

I use sinusoidal synthesis to calculate values.

## References

Hiroya Takamura, Takashi Inui, Manabu Okumura,
"Extracting Semantic Orientations of Words using Spin Model", In Proceedings of the 43rd Annual Meeting of the Association for Computational Linguistics (ACL2005) , pages 133--140, 2005.

## Experiments

I experimented the precision and reported the results in [my blog](http://h1mkt.hateblo.jp/entries/2015/06/17).

## polaris In Practice

I use polaris to analyze polarity of posts in [Twintter](https://github.com/himkt/twintter).
