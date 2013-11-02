# Pumistrano

Puma for Capistrano 3:

* `cap puma:start`: Starts puma.
* `cap puma:stop`: Stops puma.
* `cap puma:restart`: Restarts puma.
* `cap puma:status`: Show puma status.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pumistrano'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install pumistrano
```

## Usage

Require `pumistrano` in your `Capfile`:

```ruby
require 'pumistrano'
```

And enjoy!

If you want to restart puma in every deploy you may `invoke :'puma:restart'`

## Configuration options

* `:puma_env`: which environment to use to run the app. Defaults to `RAILS_ENV`
(if set) or the current stage.
* `:puma_log`: where to store the puma log. Defaults to
`shared_path/log/puma.log`.
* `:puma_port`: which port to use. Defaults to `3000`.
* `:puma_state`: which state file to use. defaults to
`shared_path/tmp/pids/puma.state`.
* `:puma_extra_options`: Extra options such as `-C config/puma.rb`.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

See the [LICENSE](https://github.com/patriciomacadden/pumistrano/blob/master/LICENSE).
