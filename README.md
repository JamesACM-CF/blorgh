# Blorgh Engine
Example blorgh engine for your application

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'blorgh', git: 'https://github.com/JamesACM-CF/blorgh.git', tag: 'LATEST_TAG'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install blorgh
```

Finally copy migrations and run:
```bash
$ rails blorgh:install:migrations
```

```bash
$ rails db:migrate SCOPE=blorgh
```

If you need to rollback `blorgh` migrations you can run:

```bash
$ rails db:migrate SCOPE=blorgh VERSION=0
```

## Usage
Mount it in your `routes.rb` file:

```ruby
mount Blorgh::Engine, at: '/SOME_PATH', as: 'SOME NAMESPACE'
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
