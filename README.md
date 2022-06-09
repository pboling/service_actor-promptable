# ServiceActor::Promptable

Easily add a TTY prompt to your Service Actors!

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add service_actor-promptable

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install service_actor-promptable

## Usage

This example uses tty-prompt, but you can use any prompt library.

In your Gemfile:
```ruby
gem 'service_actor-promptable'
gem 'tty-prompt'
```

Create an actor that will use a prompt:
```rb
require "tty/prompt"

class ShouldContinue < Actor
  include ServiceActor::Promptable

  prompt_with TTY::Prompt.new
  output :answer, type: String

  def call
    self.answer = prompt.ask("What is the capital of Assyria?", default: "Uh, I don't know that")
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pboling/service_actor-promptable. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/pboling/service_actor-promptable/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ServiceActor::Promptable project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pboling/service_actor-promptable/blob/main/CODE_OF_CONDUCT.md).
