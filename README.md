# ServiceActor::Promptable

Easily add a TTY prompt to your Service Actors!

<!--
Numbering rows and badges in each row as a visual "database" lookup,
    as the table is extremely dense, and it can be very difficult to find anything
Putting one on each row here, to document the emoji that should be used, and for ease of copy/paste.

row #s:
1️⃣
2️⃣
3️⃣
4️⃣
5️⃣
6️⃣
7️⃣

badge #s:
⛳️
🖇
🏘
🚎
🖐
🧮
📗

appended indicators:
♻️ - URL needs to be updated from SAAS integration. Find / Replace is insufficient.
-->

|     | Project                        | bundle add service_actor-promptable                                                                                                                                                                                                                                        |
|:----|--------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 1️⃣ | name, license, docs, standards | [![RubyGems.org][⛳️name-img]][⛳️gem] [![License: MIT][🖇src-license-img]][🖇src-license] [![RubyDoc.info][🚎yard-img]][🚎yard] [![SemVer 2.0.0][🧮semver-img]][semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog]                                 |
| 2️⃣ | version & activity             | [![Gem Version][⛳️version-img]][⛳️gem] [![Total Downloads][🖇DL-total-img]][⛳️gem] [![Download Rank][🏘DL-rank-img]][⛳️gem] [![Source Code][🚎src-home-img]][🚎src-home] [![Open PRs][🖐prs-o-img]][🖐prs-o] [![Closed PRs][🧮prs-c-img]][🧮prs-c]                         |
| 3️⃣ | maintanence & linting          | [![Maintainability][⛳cclim-maint-img♻️]][⛳cclim-maint] [![Helpers][🖇triage-help-img]][🖇triage-help] [![Depfu][🏘depfu-img♻️]][🏘depfu♻️] [![Contributors][🚎contributors-img]][🚎contributors] [![Style][🖐style-wf-img]][🖐style-wf] [![Kloc Roll][🧮kloc-img]][🧮kloc] |
| 4️⃣ | testing                        | [![Open Issues][⛳iss-o-img]][⛳iss-o] [![Closed Issues][🖇iss-c-img]][🖇iss-c] [![Supported][🏘sup-wf-img]][🏘sup-wf] [![Heads][🚎heads-wf-img]][🚎heads-wf] [![Unofficial Support][🖐uns-wf-img]][🖐uns-wf]                                                                |
| 5️⃣ | coverage & security            | [![CodeClimate][⛳cclim-cov-img♻️]][⛳cclim-cov] [![CodeCov][🖇codecov-img♻️]][🖇codecov] [![Coveralls][🏘coveralls-img]][🏘coveralls] [![Security Policy][🚎sec-pol-img]][🚎sec-pol] [![CodeQL][🖐codeQL-img]][🖐codeQL] [![Code Coverage][🧮cov-wf-img]][🧮cov-wf]         |
| 6️⃣ | resources                      | [![Discussion][⛳gh-discussions-img]][⛳gh-discussions] [![Get help on Codementor][🖇codementor-img]][🖇codementor] [![Chat][🏘chat-img]][🏘chat] [![Blog][🚎blog-img]][🚎blog] [![Wiki][🖐wiki-img]][🖐wiki]                                                                |
| 7️⃣ | spread 💖                      | [![Liberapay Patrons][⛳liberapay-img]][⛳liberapay] [![Sponsor Me][🖇sponsor-img]][🖇sponsor] [![Tweet @ Peter][🏘tweet-img]][🏘tweet] [🌏][aboutme] [👼][angelme] [💻][coderme]                                                                                            |

<!--
The link tokens in the following sections should be kept ordered by the row and badge numbering scheme
-->

<!-- 1️⃣ name, license, docs -->
[⛳️gem]: https://rubygems.org/gems/service_actor-promptable
[⛳️name-img]: https://img.shields.io/badge/name-service_actor--promptable-brightgreen.svg?style=flat
[🖇src-license]: https://opensource.org/licenses/MIT
[🖇src-license-img]: https://img.shields.io/badge/License-MIT-green.svg
[🚎yard]: https://www.rubydoc.info/github/pboling/service_actor-promptable
[🚎yard-img]: https://img.shields.io/badge/documentation-rubydoc-brightgreen.svg?style=flat
[🧮semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat

<!-- 2️⃣ version & activity -->
[⛳️version-img]: http://img.shields.io/gem/v/service_actor-promptable.svg
[🖇DL-total-img]: https://img.shields.io/gem/dt/service_actor-promptable.svg
[🏘DL-rank-img]: https://img.shields.io/gem/rt/service_actor-promptable.svg
[🚎src-home]: https://github.com/pboling/service_actor-promptable
[🚎src-home-img]: https://img.shields.io/badge/source-github-brightgreen.svg?style=flat
[🖐prs-o]: https://github.com/pboling/service_actor-promptable/pulls
[🖐prs-o-img]: https://img.shields.io/github/issues-pr/pboling/service_actor-promptable
[🧮prs-c]: https://github.com/pboling/service_actor-promptable/pulls?q=is%3Apr+is%3Aclosed
[🧮prs-c-img]: https://img.shields.io/github/issues-pr-closed/pboling/service_actor-promptable

<!-- 3️⃣ maintenance & linting -->
[⛳cclim-maint]: https://codeclimate.com/github/pboling/service_actor-promptable/maintainability
[⛳cclim-maint-img♻️]: https://api.codeclimate.com/v1/badges/e3d930bcbfe3fdc1b144/maintainability
[🖇triage-help]: https://www.codetriage.com/pboling/service_actor-promptable
[🖇triage-help-img]: https://www.codetriage.com/pboling/service_actor-promptable/badges/users.svg
[🏘depfu♻️]: https://depfu.com/github/pboling/service_actor-promptable?project_id=35841
[🏘depfu-img♻️]: https://badges.depfu.com/badges/0813b6634ef735b352dc593196953773/count.svg
[🚎contributors]: https://github.com/pboling/service_actor-promptable/graphs/contributors
[🚎contributors-img]: https://img.shields.io/github/contributors-anon/pboling/service_actor-promptable
[🖐style-wf]: https://github.com/pboling/service_actor-promptable/actions/workflows/style.yml
[🖐style-wf-img]: https://github.com/pboling/service_actor-promptable/actions/workflows/style.yml/badge.svg
[🧮kloc]: https://www.youtube.com/watch?v=dQw4w9WgXcQ
[🧮kloc-img]: https://img.shields.io/tokei/lines/github.com/pboling/service_actor-promptable

<!-- 4️⃣ testing -->
[⛳iss-o]: https://github.com/pboling/service_actor-promptable/issues
[⛳iss-o-img]: https://img.shields.io/github/issues-raw/pboling/service_actor-promptable
[🖇iss-c]: https://github.com/pboling/service_actor-promptable/issues?q=is%3Aissue+is%3Aclosed
[🖇iss-c-img]: https://img.shields.io/github/issues-closed-raw/pboling/service_actor-promptable
[🏘sup-wf]: https://github.com/pboling/service_actor-promptable/actions/workflows/current.yml
[🏘sup-wf-img]: https://github.com/pboling/service_actor-promptable/actions/workflows/current.yml/badge.svg
[🚎heads-wf]: https://github.com/pboling/service_actor-promptable/actions/workflows/heads.yml
[🚎heads-wf-img]: https://github.com/pboling/service_actor-promptable/actions/workflows/heads.yml/badge.svg
[🖐uns-wf]: https://github.com/pboling/service_actor-promptable/actions/workflows/legacy.yml
[🖐uns-wf-img]: https://github.com/pboling/service_actor-promptable/actions/workflows/legacy.yml/badge.svg

<!-- 5️⃣ coverage & security -->
[⛳cclim-cov]: https://codeclimate.com/github/pboling/service_actor-promptable/test_coverage
[⛳cclim-cov-img♻️]: https://api.codeclimate.com/v1/badges/e3d930bcbfe3fdc1b144/test_coverage
[🖇codecov-img♻️]: https://codecov.io/gh/pboling/service_actor-promptable/branch/main/graph/badge.svg?token=79c3X4vtfO
[🖇codecov]: https://codecov.io/gh/pboling/service_actor-promptable
[🏘coveralls]: https://coveralls.io/github/pboling/service_actor-promptable?branch=main
[🏘coveralls-img]: https://coveralls.io/repos/github/pboling/service_actor-promptable/badge.svg?branch=main
[🚎sec-pol]: https://github.com/pboling/service_actor-promptable/blob/main/SECURITY.md
[🚎sec-pol-img]: https://img.shields.io/badge/security-policy-brightgreen.svg?style=flat
[🖐codeQL]: https://github.com/pboling/service_actor-promptable/security/code-scanning
[🖐codeQL-img]: https://github.com/pboling/service_actor-promptable/actions/workflows/codeql-analysis.yml/badge.svg
[🧮cov-wf]: https://github.com/pboling/service_actor-promptable/actions/workflows/coverage.yml
[🧮cov-wf-img]: https://github.com/pboling/service_actor-promptable/actions/workflows/coverage.yml/badge.svg

<!-- 6️⃣ resources -->
[⛳gh-discussions]: https://github.com/pboling/service_actor-promptable/discussions
[⛳gh-discussions-img]: https://img.shields.io/github/discussions/pboling/service_actor-promptable
[🖇codementor]: https://www.codementor.io/peterboling?utm_source=github&utm_medium=button&utm_term=peterboling&utm_campaign=github
[🖇codementor-img]: https://cdn.codementor.io/badges/get_help_github.svg
[🏘chat]: https://gitter.im/pboling/service_actor-promptable
[🏘chat-img]: https://img.shields.io/gitter/room/pboling/service_actor-promptable.svg
[🚎blog]: http://www.railsbling.com/tags/service_actor-promptable/
[🚎blog-img]: https://img.shields.io/badge/blog-railsbling-brightgreen.svg?style=flat
[🖐wiki]: https://github.com/pboling/service_actor-promptable/wiki
[🖐wiki-img]: https://img.shields.io/badge/wiki-examples-brightgreen.svg?style=flat

<!-- 7️⃣ spread 💖 -->
[⛳liberapay-img]: https://img.shields.io/liberapay/patrons/pboling.svg?logo=liberapay
[⛳liberapay]: https://liberapay.com/pboling/donate
[🖇sponsor-img]: https://img.shields.io/badge/sponsor-pboling.svg?style=social&logo=github
[🖇sponsor]: https://github.com/sponsors/pboling
[🏘tweet-img]: https://img.shields.io/twitter/follow/galtzo.svg?style=social&label=Follow
[🏘tweet]: http://twitter.com/galtzo

<!-- Maintainer Contact Links -->
[railsbling]: http://www.railsbling.com
[peterboling]: http://www.peterboling.com
[aboutme]: https://about.me/peter.boling
[angelme]: https://angel.co/peter-boling
[coderme]:http://coderwall.com/pboling

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
  # or
  # output :answer, type: [TrueClass, FalseClass]

  def call
    self.answer = prompt.ask("What is the capital of Assyria?", default: "Uh, I don't know that")
    # or for a Yes/No query:
    # self.answer = prompt.yes?("Do it?") # (Y/n)
  end
end
```

### How to test

Let's say you have the `ShouldContinue` class above, how do you provide user input to test the Actor?

```ruby
require "tty/prompt"
require "tty/prompt/test"

describe ShouldContinue do
  around do |example|
    original = ShouldContinue.prompt
    ShouldContinue.prompt = TTY::Prompt::Test.new
    # Prepare a response from the user
    ShouldContinue.prompt.input << "New Jack City\n"
    # or for a Yes/No response:
    # ShouldContinue.prompt.input << "Y\n"
    ShouldContinue.prompt.input.rewind
    example.run
    ShouldContinue.prompt = original
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

See [CONTRIBUTING.md][contributing]

[contributing]: https://github.com/pboling/service_actor-promptable/blob/main/CONTRIBUTING.md

## Contributors

[![Contributors](https://contrib.rocks/image?repo=pboling/service_actor-promptable)]("https://github.com/pboling/service_actor-promptable/graphs/contributors")

Made with [contributors-img](https://contrib.rocks).

## Versioning

This library aims to adhere to [Semantic Versioning 2.0.0][semver].
Violations of this scheme should be reported as bugs. Specifically,
if a minor or patch version is released that breaks backward
compatibility, a new version should be immediately released that
restores compatibility. Breaking changes to the public API will
only be introduced with new major versions.

As a result of this policy, you can (and should) specify a
dependency on this gem using the [Pessimistic Version Constraint][pvc] with two digits of precision.

For example:

```ruby
spec.add_dependency 'service_actor-promptable', '~> 1.0'
```

[semver]: http://semver.org/
[pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint

## License

The gem is available as open source under the terms of
the [MIT License][license] [![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)][license-ref].
See [LICENSE][license] for the official [Copyright Notice][copyright-notice-explainer].

* Copyright (c) 2022 [Peter H. Boling][peterboling] of [Rails Bling][railsbling]

[license]: https://github.com/pboling/service_actor-promptable/blob/main/LICENSE.txt
[license-ref]: https://opensource.org/licenses/MIT
[copyright-notice-explainer]: https://opensource.stackexchange.com/questions/5778/why-do-licenses-such-as-the-mit-license-specify-a-single-year

## Code of Conduct

Everyone interacting in the ServiceActor::Promptable project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/pboling/service_actor-promptable/blob/main/CODE_OF_CONDUCT.md).

## Security

See [SECURITY.md](https://github.com/pboling/service_actor-promptable/blob/main/SECURITY.md).

