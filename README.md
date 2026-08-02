<p align="center">
    <a href="https://discord.gg/3qme4XHNKN" target="_blank" rel="noopener">
      <img width="124px" src="https://github.com/galtzo-floss/shields-badge/raw/main/docs/images/logo/galtzo-floss-logos-original.svg?raw=true" alt="Galtzo.com Logo by Aboling0, CC BY-SA 4.0">
    </a>
    <a href="https://shields.io" target="_blank" rel="noopener">
      <img width="124px" src="https://github.com/galtzo-floss/shields-badge/raw/main/docs/images/logo/shields-logo-200px.png?raw=true" alt="Galtzo.com Logo by Aboling0, CC BY-SA 4.0">
    </a>
    <a href="https://shields.io" target="_blank" rel="noopener">
      <img width="124px" src="https://github.com/galtzo-floss/shields-badge/raw/main/docs/images/logo/shields-badge-192px-gl.png?raw=true" alt="Galtzo.com Logo by Aboling0, CC BY-SA 4.0">
    </a>
    <a href="https://www.ruby-lang.org/" target="_blank" rel="noopener">
      <img width="124px" src="https://github.com/galtzo-floss/shields-badge/raw/main/docs/images/logo/ruby-logo-198px.svg?raw=true" alt="Yukihiro Matsumoto, Ruby Visual Identity Team, CC BY-SA 2.5">
    </a>
</p>

# 📛 Shields::Badge

[![Version][👽versioni]][👽version] [![License: MIT][📄license-img]][📄license-ref] [![Downloads Rank][👽dl-ranki]][👽dl-rank] [![Open Source Helpers][👽oss-helpi]][👽oss-help] [![Depfu][🔑depfui♻️]][🔑depfu] [![Coveralls Test Coverage][🔑coveralls-img]][🔑coveralls] [![QLTY Test Coverage][🔑qlty-covi♻️]][🔑qlty-cov] [![QLTY Maintainability][🔑qlty-mnti♻️]][🔑qlty-mnt] [![CI Heads][🚎3-hd-wfi]][🚎3-hd-wf] [![CI Runtime Dependencies @ HEAD][🚎12-crh-wfi]][🚎12-crh-wf] [![CI Current][🚎11-c-wfi]][🚎11-c-wf] [![CI JRuby][🚎10-j-wfi]][🚎10-j-wf] [![CI Supported][🚎6-s-wfi]][🚎6-s-wf] [![CI Legacy][🚎4-lg-wfi]][🚎4-lg-wf] [![CI Test Coverage][🚎2-cov-wfi]][🚎2-cov-wf] [![CI Style][🚎5-st-wfi]][🚎5-st-wf] [![CodeQL][🖐codeQL-img]][🖐codeQL]

---

[![Liberapay Goal Progress][⛳liberapay-img]][⛳liberapay] [![Sponsor Me on Github][🖇sponsor-img]][🖇sponsor] [![Buy me a coffee][🖇buyme-small-img]][🖇buyme] [![Donate on Polar][🖇polar-img]][🖇polar] [![Donate to my FLOSS or refugee efforts at ko-fi.com][🖇kofi-img]][🖇kofi] [![Donate to my FLOSS or refugee efforts using Patreon][🖇patreon-img]][🖇patreon]

[⛳liberapay-img]: https://img.shields.io/liberapay/goal/pboling.svg?logo=liberapay
[⛳liberapay]: https://liberapay.com/pboling/donate
[🖇sponsor-img]: https://img.shields.io/badge/Sponsor_Me!-pboling.svg?style=social&logo=github
[🖇sponsor]: https://github.com/sponsors/pboling
[🖇polar-img]: https://img.shields.io/badge/polar-donate-yellow.svg
[🖇polar]: https://polar.sh/pboling
[🖇kofi-img]: https://img.shields.io/badge/a_more_different_coffee-✓-yellow.svg
[🖇kofi]: https://ko-fi.com/O5O86SNP4
[🖇patreon-img]: https://img.shields.io/badge/patreon-donate-yellow.svg
[🖇patreon]: https://patreon.com/galtzo
[🖇buyme-small-img]: https://img.shields.io/badge/buy_me_a_coffee-✓-yellow.svg?style=flat

RubyGem version of the interactive tool found at [shields.io/badges](https://shields.io/badges).

<p>
If you use this project, or badges from Shields.io, please help increase Shields.io's rate limit by
<a href="https://img.shields.io/github-auth" target="_blank" rel="noopener noreferrer">authorizing the Shields.io GitHub application</a>.
Read more about <a href="https://shields.io/blog/token-pool">how it works</a>.
</p>

| Federated [DVCS][💎d-in-dvcs] Repository              | Status                                                            | Issues                    | PRs                      | Wiki                      | CI                       | Discussions                  |
|-------------------------------------------------------|-------------------------------------------------------------------|---------------------------|--------------------------|---------------------------|--------------------------|------------------------------|
| 🧪 [galtzo-floss/shields-badge on GitLab][📜src-gl]   | The Truth                                                         | [💚][🤝gl-issues]         | [💚][🤝gl-pulls]         | [💚][📜wiki]              | 🏀 Tiny Matrix           | ➖                            |
| 🧊 [galtzo-floss/shields-badge on CodeBerg][📜src-cb] | An Ethical Mirror ([Donate][🤝cb-donate])                         | ➖                         | [💚][🤝cb-pulls]         | ➖                         | ⭕️ No Matrix             | ➖                            |
| 🐙 [galtzo-floss/shields-badge on GitHub][📜src-gh]   | A Dirty Mirror                                                    | [💚][🤝gh-issues]         | [💚][🤝gh-pulls]         | ➖                         | 💯 Full Matrix           | ➖                            |
| 🎮️ [Discord Server][✉️discord-invite]                | [![Live Chat on Discord][✉️discord-invite-img]][✉️discord-invite] | [Let's][✉️discord-invite] | [talk][✉️discord-invite] | [about][✉️discord-invite] | [this][✉️discord-invite] | [library!][✉️discord-invite] |

### Upgrading Runtime Gem Dependencies

Great care has been taken to ensure this gem is working with all the
leading versions per each minor version of Ruby of all the runtime dependencies it can install with.

What does that mean specifically for the runtime dependencies?

We are approaching 100% test coverage of lines and branches, and this test suite runs across a large matrix
covering the latest patch for each of the following minor versions:

* MRI Ruby @ v3.1, v3.2, v3.3, v3.4, HEAD
* JRuby @ v9.4, v10.0, HEAD
* TruffleRuby @ v24.1, HEAD
* gem `castkit` @ v0, HEAD ⏩️ [bnlucas/castkit](https://github.com/bnlucas/castkit)
* gem `version_gem` @ v1, HEAD ⏩️ [oauth-xx/version_gem](https://gitlab.com/oauth-xx/version_gem)

#### You should upgrade this gem with confidence\*.

- This gem follows a _strict & correct_ (according to the maintainer of SemVer; [more info][sv-pub-api]) interpretation of SemVer.
    - Dropping support for **any** of the runtime dependency _versions_ above will be a major version bump.
    - If you aren't on one of the minor versions above, make getting there a priority.
- You should upgrade the dependencies of this gem with confidence\*.
- Please do upgrade, and then, when it goes smooth as butter [please sponsor me][🖇sponsor].  Thanks!

[sv-pub-api]: #-is-platform-support-part-of-the-public-api

\* MIT license; I am unable to make guarantees.

| 🚚 Test matrix brought to you by | 🔎 appraisal++                                                          |
|----------------------------------|-------------------------------------------------------------------------|
| Adds back support for old Rubies | ✨ [appraisal PR #250](https://github.com/thoughtbot/appraisal/pull/250) |
| Adds support for `eval_gemfile`  | ✨ [appraisal PR #248](https://github.com/thoughtbot/appraisal/pull/248) |
| Please review                    | my PRs!                                                                 |

<details>
  <summary>Standard Library Dependencies</summary>

The various versions are tested within whatever Ruby includes them, via the Ruby test matrix.

* uri

If you use a discrete gem version it should also work fine!

</details>

### Quick Usage Example for AI and Copy / Pasting

Do you ever lay awake at night thinking?

- How is the CI looking for `kettle-soup-cover`? [![kettle-rb/kettle-soup-cover check runs (branch: main)](https://img.shields.io/github/check-runs/kettle-rb/kettle-soup-cover/main?)](https://github.com/kettle-rb/kettle-soup-cover/actions)
- What is the current coverage on `oauth2` gem? [![oauth-xx/oauth2 test coverage](https://img.shields.io/coverallsCoverage/github/oauth-xx/oauth2?)](https://github.com/oauth-xx/oauth2/actions)
- How many commits have there been since last release of `gem_bench`? [![pboling/gem_bench commits since latest release](https://img.shields.io/github/commits-since/pboling/gem_bench/latest?)](https://github.com/pboling/gem_bench/releases)
- What is the download rank (all time) for `anonymous_active_record`? [![RubyGems Download Rank](https://img.shields.io/gem/rt/anonymous_active_record?)](https://rubygems.org/gems/anonymous_active_record)
- What is the download rank (today) for `sanitize_email`? [![RubyGems Download Rank](https://img.shields.io/gem/rd/sanitize_email?)](https://rubygems.org/gems/sanitize_email)
- What are the total downloads of `rubocop-lts`? [![RubyGems Total Downloads](https://img.shields.io/gem/dt/rubocop-lts?)](https://rubygems.org/gems/rubocop-lts)
- How many stars does `flag_shih_tzu` have? [![GitHub Stars](https://img.shields.io/github/stars/pboling/flag_shih_tzu?)](https:///github.com/pboling/flag_shih_tzu/stargazers)

Or maybe you want to build a dashboard of badges for all your projects...

For the badges that have been implemented, all options on Shields.io are available.

```ruby
# Optional: Eager load all badges (otherwise they will load the first time called through method_missing)
Shields::Badge.register_all

# All Path Parameters are supported
Shields::Badge.github_branch_check_runs(user: "kettle-rb", repo: "kettle-soup-cover", branch: "main")
# => "[![kettle-rb/kettle-soup-cover check runs (branch: main)](https://img.shields.io/github/check-runs/kettle-rb/kettle-soup-cover/main?)](https://github.com/kettle-rb/kettle-soup-cover/actions)"
Shields::Badge.coveralls(user: "oauth-xx", repo: "oauth2", vcs_type: "github")
# => "[![oauth-xx/oauth2 test coverage](https://img.shields.io/coverallsCoverage/github/oauth-xx/oauth2?)](https://github.com/oauth-xx/oauth2/actions)"
Shields::Badge.github_commits_since_latest_release(user: "pboling", repo: "gem_bench")
# => "[![pboling/gem_bench commits since latest release](https://img.shields.io/github/commits-since/pboling/gem_bench/latest?)](https://github.com/pboling/gem_bench/releases)"
Shields::Badge.gem_download_rank(period: "rt", gem: "anonymous_active_record")
# => "[![RubyGems Download Rank](https://img.shields.io/gem/rt/anonymous_active_record?)](https://rubygems.org/gems/anonymous_active_record)"
Shields::Badge.gem_download_rank(gem: "sanitize_email", period: "rd")
# => "[![RubyGems Download Rank](https://img.shields.io/gem/rd/sanitize_email?)](https://rubygems.org/gems/sanitize_email)"
Shields::Badge.gem_total_downloads(gem: "rubocop-lts")
# => "[![RubyGems Total Downloads](https://img.shields.io/gem/dt/rubocop-lts?)](https://rubygems.org/gems/rubocop-lts)"
Shields::Badge.github_repo_stars(user: "pboling", repo: "flag_shih_tzu")
# => "[![GitHub Stars](https://img.shields.io/github/stars/pboling/flag_shih_tzu?)](https:///github.com/pboling/flag_shih_tzu/stargazers)"

# All Query Parameters are supported; check Usage section below.
```

## 💡 Info you can shake a stick at

| Tokens to Remember      | [![Gem name][⛳️name-img]][⛳️gem-name] [![Gem namespace][⛳️namespace-img]][⛳️gem-namespace]                                                                                                                                                                                                                                                                                                                                                                          |
|-------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Works with JRuby        | [![JRuby 9.4 Compat][💎jruby-9.4i]][🚎10-j-wf] [![JRuby 10.0 Compat][💎jruby-c-i]][🚎11-c-wf] [![JRuby HEAD Compat][💎jruby-headi]][🚎3-hd-wf]                                                                                                                                                                                                                                                                                                                      |
| Works with Truffle Ruby | [![Truffle Ruby 24.1 Compat][💎truby-c-i]][🚎11-c-wf] [![Truffle Ruby HEAD Compat][💎truby-headi]][🚎3-hd-wf]                                                                                                                                                                                                                                                                                                                                                       |
| Works with MRI Ruby 3   | [![Ruby 3.1 Compat][💎ruby-3.1i]][🚎6-s-wf] [![Ruby 3.2 Compat][💎ruby-3.2i]][🚎6-s-wf] [![Ruby 3.3 Compat][💎ruby-3.3i]][🚎6-s-wf] [![Ruby 3.4 Compat][💎ruby-c-i]][🚎11-c-wf] [![Ruby HEAD Compat][💎ruby-headi]][🚎3-hd-wf]                                                                                                                                                                                                                                      |
| Source                  | [![Source on GitLab.com][📜src-gl-img]][📜src-gl] [![Source on CodeBerg.org][📜src-cb-img]][📜src-cb] [![Source on Github.com][📜src-gh-img]][📜src-gh] [![The best SHA: dQw4w9WgXcQ!][🧮kloc-img]][🧮kloc]                                                                                                                                                                                                                                                         |
| Documentation           | [![Current release on RubyDoc.info][📜docs-cr-rd-img]][🚎yard-current] [![YARD on Galtzo.com][📜docs-head-rd-img]][🚎yard-head] [![BDFL Blog][🚂bdfl-blog-img]][🚂bdfl-blog] [![Wiki][📜wiki-img]][📜wiki]                                                                                                                                                                                                                                                          |
| Compliance              | [![License: MIT][📄license-img]][📄license-ref] [![📄ilo-declaration-img]][📄ilo-declaration] [![Security Policy][🔐security-img]][🔐security] [![Contributor Covenant 2.1][🪇conduct-img]][🪇conduct] [![SemVer 2.0.0][📌semver-img]][📌semver]                                                                                                                                                                                                                    |
| Style                   | [![Enforced Code Style Linter][💎rlts-img]][💎rlts] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog] [![Gitmoji Commits][📌gitmoji-img]][📌gitmoji]                                                                                                                                                                                                                                                                                              |
| Support                 | [![Live Chat on Discord][✉️discord-invite-img]][✉️discord-invite] [![Get help from me on Upwork][👨🏼‍🏫expsup-upwork-img]][👨🏼‍🏫expsup-upwork] [![Get help from me on Codementor][👨🏼‍🏫expsup-codementor-img]][👨🏼‍🏫expsup-codementor]                                                                                                                                                                                                                       |
| Enterprise Support      | [![Get help from me on Tidelift][🏙️entsup-tidelift-img]][🏙️entsup-tidelift]<br/>💡Subscribe for support guarantees covering _all_ FLOSS dependencies!<br/>💡Tidelift is part of [Sonar][🏙️entsup-tidelift-sonar]!<br/>💡Tidelift pays maintainers to maintain the software you depend on!<br/>📊`@`Pointy Haired Boss: An [enterprise support][🏙️entsup-tidelift] subscription is "[never gonna let you down][🧮kloc]", and *supports* open source maintainers! |
| Comrade BDFL 🎖️        | [![Follow Me on LinkedIn][💖🖇linkedin-img]][💖🖇linkedin] [![Follow Me on Ruby.Social][💖🐘ruby-mast-img]][💖🐘ruby-mast] [![Follow Me on Bluesky][💖🦋bluesky-img]][💖🦋bluesky] [![Contact BDFL][🚂bdfl-contact-img]][🚂bdfl-contact] [![My technical writing][💖💁🏼‍♂️devto-img]][💖💁🏼‍♂️devto]                                                                                                                                                              |
| `...` 💖                | [![Find Me on WellFound:][💖✌️wellfound-img]][💖✌️wellfound] [![Find Me on CrunchBase][💖💲crunchbase-img]][💖💲crunchbase] [![My LinkTree][💖🌳linktree-img]][💖🌳linktree] [![More About Me][💖💁🏼‍♂️aboutme-img]][💖💁🏼‍♂️aboutme] [🧊][💖🧊berg] [🐙][💖🐙hub]  [🛖][💖🛖hut] [🧪][💖🧪lab]                                                                                                                                                                   |

## 🚀 Release Documentation

### Version 1.0.x

<details>
  <summary>1.0.x CHANGELOGs and READMEs</summary>

| Version | Release Date | CHANGELOG                           | README                        |
|---------|--------------|-------------------------------------|-------------------------------|
| 1.0.0   | 2025-05-29   | [v1.0.0 CHANGELOG][1.0.0-changelog] | [v1.0.0 README][1.0.0-readme] |
</details>

[1.0.0-changelog]: https://gitlab.com/galtzo-floss/shields-badge/-/blob/main/CHANGELOG.md?ref_type=heads#100---2025-05-29

[1.0.0-readme]: https://gitlab.com/galtzo-floss/shields-badge/-/blob/v1.0.0/README.md

## ✨ Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add shields-badge

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install shields-badge

### 🔒 Secure Installation

`shields-badge` is cryptographically signed, and has verifiable [SHA-256 and SHA-512][💎SHA_checksums] checksums by
[stone_checksums][💎stone_checksums]. Be sure the gem you install hasn’t been tampered with
by following the instructions below.

Add my public key (if you haven’t already, expires 2045-04-29) as a trusted certificate:

```shell
gem cert --add <(curl -Ls https://raw.github.com/galtzo-floss/shields-badge/main/certs/pboling.pem)
```

You only need to do that once.  Then proceed to install with:

```shell
gem install shields-badge -P MediumSecurity
```

The `MediumSecurity` trust profile will verify signed gems, but allow the installation of unsigned dependencies.

This is necessary because not all of `shields-badge`’s dependencies are signed, so we cannot use `HighSecurity`.

If you want to up your security game full-time:

```shell
bundle config set --global trust-policy MediumSecurity
```

NOTE: Be prepared to track down certs for signed gems and add them the same way you added mine.

## Shields::Badge for Enterprise

Available as part of the Tidelift Subscription.

The maintainers of this and thousands of other packages are working with Tidelift to deliver commercial support and maintenance for the open source packages you use to build your applications. Save time, reduce risk, and improve code health, while paying the maintainers of the exact packages you use. [Learn more.][tidelift-ref]

[tidelift-ref]: https://tidelift.com/subscription/pkg/rubygems-shields-badge?utm_source=rubygems-shields-badge&utm_medium=referral&utm_campaign=enterprise

## Security contact information

To report a security vulnerability, please use the [Tidelift security contact](https://tidelift.com/security).
Tidelift will coordinate the fix and disclosure.

For more see [SECURITY.md][🔐security].

## Compatibility

Targeted ruby compatibility is non-EOL versions of Ruby, currently 3.2, 3.3, and 3.4.
Compatibility is further distinguished as "Best Effort Support" or "Incidental Support" for older versions of Ruby.
This gem will install on Ruby versions >= v3.1 for 1.x releases.

<details>
  <summary>Ruby Engine Compatibility Policy</summary>

This gem is tested against MRI, JRuby, and Truffleruby.
Each of those has varying versions that target a specific version of MRI Ruby.
This gem should work in the just-listed Ruby engines according to the targeted MRI compatibility of each version, though there are exceptions for certain things.
</details>

<details>
  <summary>Ruby Version Compatibility Policy</summary>

If something doesn't work on one of the supported versions, it's a bug.
</details>

|     | Ruby Shields::Badge Version | Maintenance Branch | Targeted Support | Best Effort Support | Incidental Support |
|:----|-----------------------------|--------------------|------------------|---------------------|--------------------|
| 1️⃣ | 1.0.x                       | `main`             | 3.2, 3.3, 3.4    | 3.1                 | N/A                |

NOTE: The 1.4 series will only receive critical security updates.
See [SECURITY.md][🔐security].

## 🔧 Basic Usage

All parameters are in snake case when passing as Ruby arguments.
Certain parameters are configured to serialize as camel case (lower first) when formatted.
This is all automatic, and you don't need to worry about it.
You can even supply the parameters in camel case (lower first) if you want.

### Setup

Require the library (if this gem is in your `Gemfile` bundler will do this for you):

```ruby
require "shields/badge"
```

#### Prefer method_missing or eager load?

The first time they are invoked, the badge generation methods on `Shields::Badge` will automatically require the badge tooling they need to generate a badge. If you want to avoid `method_missing`, you can eager load all the badges with `Shields::Badge.register_all`.

### Path Parameters

These are generally required arguments and vary from badge to badge.

See the specs for examples.  There is a spec for every badge, and at least one spec that utilizes every available path parameter.

### Query Parameters

Most of these are optional arguments, but the odd one is required.

The query parameters that all badges share are:

```ruby
path_parameters = {gem: "orange"}
query_parameters = {
  style: "flat",
  logo: "github",
  logo_color: "yellow",
  logo_size: "auto",
  label: "banana",
  label_color: "blue",
  color: "black",
  cache_seconds: "3600",
  link: "https://example.com/green/red",
}
# NOTE: You can specify path and query parameters separately, or as top-level arguments.
Shields::Badge.gem_total_downloads(path_parameters:, query_parameters:)
# => "[![RubyGems Total Downloads](https://img.shields.io/gem/dt/orange?style=flat&logo=github&logoColor=yellow&logoSize=auto&label=banana&labelColor=blue&color=black&cacheSeconds=3600&link=https%3A%2F%2Fexample.com%2Fgreen%2Fred)](https://rubygems.org/gems/orange)
Shields::Badge.gem_total_downloads(**path_parameters, **query_parameters)
# => "[![RubyGems Total Downloads](https://img.shields.io/gem/dt/orange?style=flat&logo=github&logoColor=yellow&logoSize=auto&label=banana&labelColor=blue&color=black&cacheSeconds=3600&link=https%3A%2F%2Fexample.com%2Fgreen%2Fred)](https://rubygems.org/gems/orange)
```

All the optional values supported by Shields.io are supported.  Some badges have additional query parameters.

For the arguments that are designated as camel case (lower first) on Shields.io, it doesn't matter if you supply the arguments in camel case (lower first) or snake case, as they will both work.

The above snake case arguments result in the same badge as the below camel case arguments:

```ruby
path_parameters = {gem: "orange"}
query_parameters = {
  style: "flat",
  logo: "github",
  logoColor: "yellow",
  logoSize: "auto",
  label: "banana",
  labelColor: "blue",
  color: "black",
  cacheSeconds: "3600",
  link: "https://example.com/green/red",
}
Shields::Badge.gem_total_downloads(path_parameters:, query_parameters:)
# => "[![RubyGems Total Downloads](https://img.shields.io/gem/dt/orange?style=flat&logo=github&logoColor=yellow&logoSize=auto&label=banana&labelColor=blue&color=black&cacheSeconds=3600&link=https%3A%2F%2Fexample.com%2Fgreen%2Fred)](https://rubygems.org/gems/orange)

# And again it doesn't matter if the arguments are top-level or nested inside path and query parameters:
Shields::Badge.gem_total_downloads(**path_parameters, **query_parameters)
# => "[![RubyGems Total Downloads](https://img.shields.io/gem/dt/orange?style=flat&logo=github&logoColor=yellow&logoSize=auto&label=banana&labelColor=blue&color=black&cacheSeconds=3600&link=https%3A%2F%2Fexample.com%2Fgreen%2Fred)](https://rubygems.org/gems/orange)
```

See the specs for more examples.  There is a spec for every badge, and at least one spec that utilizes every available query parameter.

### Formatters

Shields.io has 5 output formats.  Of those, 2 have been implemented here, and PRs are welcome for the remainder.

|             | URL                             | Markdown                  | rSt | AsciiDoc | HTML |
|-------------|---------------------------------|---------------------------|-----|----------|------|
| Implemented | 💚                              | 💚                        | ⏳️  | ⏳️       | ⏳️   |
| Module      | `...::ImageSrcUrl`              | `...::Markdown`           | ⏳️  | ⏳️       | ⏳️   |
| Source      | [image_src_url.rb][fmt-url-src] | [markdown.rb][fmt-md-src] | ⏳️  | ⏳️       | ⏳️   |

[fmt-url-src]: https://github.com/galtzo-floss/shields-badge/blob/main/lib/shields/formatter/image_src_url.rb
[fmt-md-src]: https://github.com/galtzo-floss/shields-badge/blob/main/lib/shields/formatter/markdown.rb

**Legend**

- `...` => `Shields::Formatters`
- `⏳️` => Please submit a Pull Request to implement this formatter

Check the sources of the two that are done.  They are _very_ easy to write.  This is a great project to get started with open source, because it is well tested, and patterned after the Shields.io website.

## 🔐 Security

See [SECURITY.md][🔐security].

## 🤝 Contributing

If you need some ideas of where to help, you could work on adding more code coverage,
or if it is already 💯 (see [below](#code-coverage)) check [issues][🤝gh-issues], or [PRs][🤝gh-pulls],
or use the gem and think about how it could be better.

We [![Keep A Changelog][📗keep-changelog-img]][📗keep-changelog] so if you make changes, remember to update it.

See [CONTRIBUTING.md][🤝contributing] for more detailed instructions.

### 🚀 Release Instructions

See [CONTRIBUTING.md][🤝contributing].

### Code Coverage

[![Coveralls Test Coverage][🔑coveralls-img]][🔑coveralls]
[![QLTY Test Coverage][🔑qlty-covi♻️]][🔑qlty-cov]

### 🪇 Code of Conduct

Everyone interacting with this project's codebases, issue trackers,
chat rooms and mailing lists agrees to follow the [![Contributor Covenant 2.1][🪇conduct-img]][🪇conduct].

## 🌈 Contributors

[![Contributors][🖐contributors-img]][🖐contributors]

Made with [contributors-img][🖐contrib-rocks].

Also see GitLab Contributors: [https://gitlab.com/galtzo-floss/shields-badge/-/graphs/main][🚎contributors-gl]

## ⭐️ Star History

<a href="https://star-history.com/#galtzo-floss/shields-badge&Date">
 <picture>
   <source media="(prefers-color-scheme: dark)"
           srcset="https://api.star-history.com/svg?repos=galtzo-floss/shields-badge&type=Date&theme=dark" />
   <source media="(prefers-color-scheme: light)"
           srcset="https://api.star-history.com/svg?repos=galtzo-floss/shields-badge&type=Date" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=galtzo-floss/shields-badge&type=Date" />
 </picture>
</a>

## 📌 Versioning

This Library adheres to [![Semantic Versioning 2.0.0][📌semver-img]][📌semver].
Violations of this scheme should be reported as bugs.
Specifically, if a minor or patch version is released that breaks backward compatibility,
a new version should be immediately released that restores compatibility.
Breaking changes to the public API will only be introduced with new major versions.

### 📌 Is "Platform Support" part of the public API?

Yes.  But I'm obligated to include notes...

SemVer should, but doesn't explicitly, say that dropping support for specific Platforms
is a *breaking change* to an API.
It is obvious to many, but not all, and since the spec is silent, the bike shedding is endless.

> dropping support for a platform is both obviously and objectively a breaking change

- Jordan Harband (@ljharb, maintainer of SemVer) [in SemVer issue 716][📌semver-breaking]

To get a better understanding of how SemVer is intended to work over a project's lifetime,
read this article from the creator of SemVer:

- ["Major Version Numbers are Not Sacred"][📌major-versions-not-sacred]

As a result of this policy, and the interpretive lens used by the maintainer,
you can (and should) specify a dependency on these libraries using
the [Pessimistic Version Constraint][📌pvc] with two digits of precision.

For example:

```ruby
spec.add_dependency("shields-badge", "~> 1.0")
```

See [CHANGELOG.md][📌changelog] for list of releases.

## 📄 License

The gem is available as open source under the terms of
the [MIT License][📄license] [![License: MIT][📄license-img]][📄license-ref].
See [LICENSE.txt][📄license] for the official [Copyright Notice][📄copyright-notice-explainer].

### © Copyright

<ul>
    <li>
        Copyright (c) 2025 Peter H. Boling, of
        <a href="https://discord.gg/3qme4XHNKN">
            Galtzo.com
            <picture>
              <img src="https://github.com/galtzo-floss/shields-badge/raw/main/docs/images/logo/galtzo-floss-logos-wordless.svg?raw=true" alt="Galtzo.com Logo by Aboling0, CC BY-SA 4.0" height="20">
            </picture>
        </a>, and shields-badge contributors
    </li>
</ul>

## 🤑 One more thing

You made it to the bottom of the page,
so perhaps you'll indulge me for another 20 seconds.
I maintain many dozens of gems, including this one,
because I want Ruby to be a great place for people to solve problems, big and small.
Please consider supporting my efforts via the giant yellow link below,
or one of the others at the head of this README.

[![Buy me a latte][🖇buyme-img]][🖇buyme]

[🖇buyme-img]: https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20latte&emoji=&slug=pboling&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff
[🖇buyme]: https://www.buymeacoffee.com/pboling

[✇bundle-group-pattern]: https://gist.github.com/pboling/4564780
[⛳️gem-namespace]: https://github.com/galtzo-floss/shields-badge
[⛳️namespace-img]: https://img.shields.io/badge/namespace-Shields::Badge-brightgreen.svg?style=flat&logo=ruby&logoColor=white
[⛳️gem-name]: https://rubygems.org/gems/shields-badge
[⛳️name-img]: https://img.shields.io/badge/name-shields-badge-brightgreen.svg?style=flat&logo=rubygems&logoColor=red
[🚂bdfl-blog]: http://www.railsbling.com/tags/shields-badge
[🚂bdfl-blog-img]: https://img.shields.io/badge/blog-railsbling-0093D0.svg?style=for-the-badge&logo=rubyonrails&logoColor=orange
[🚂bdfl-contact]: http://www.railsbling.com/contact
[🚂bdfl-contact-img]: https://img.shields.io/badge/Contact-BDFL-0093D0.svg?style=flat&logo=rubyonrails&logoColor=red
[💖🖇linkedin]: http://www.linkedin.com/in/peterboling
[💖🖇linkedin-img]: https://img.shields.io/badge/PeterBoling-LinkedIn-0B66C2?style=flat&logo=newjapanprowrestling
[💖✌️wellfound]: https://angel.co/u/peter-boling
[💖✌️wellfound-img]: https://img.shields.io/badge/peter--boling-orange?style=flat&logo=wellfound
[💖💲crunchbase]: https://www.crunchbase.com/person/peter-boling
[💖💲crunchbase-img]: https://img.shields.io/badge/peter--boling-purple?style=flat&logo=crunchbase
[💖🐘ruby-mast]: https://ruby.social/@galtzo
[💖🐘ruby-mast-img]: https://img.shields.io/mastodon/follow/109447111526622197?domain=https%3A%2F%2Fruby.social&style=flat&logo=mastodon&label=Ruby%20%40galtzo
[💖🦋bluesky]: https://bsky.app/profile/galtzo.com
[💖🦋bluesky-img]: https://img.shields.io/badge/@galtzo.com-0285FF?style=flat&logo=bluesky&logoColor=white
[💖🌳linktree]: https://linktr.ee/galtzo
[💖🌳linktree-img]: https://img.shields.io/badge/galtzo-purple?style=flat&logo=linktree
[💖💁🏼‍♂️devto]: https://dev.to/galtzo
[💖💁🏼‍♂️devto-img]: https://img.shields.io/badge/dev.to-0A0A0A?style=flat&logo=devdotto&logoColor=white
[💖💁🏼‍♂️aboutme]: https://about.me/peter.boling
[💖💁🏼‍♂️aboutme-img]: https://img.shields.io/badge/about.me-0A0A0A?style=flat&logo=aboutme&logoColor=white
[💖🧊berg]: https://codeberg.org/pboling
[💖🐙hub]: https://github.org/pboling
[💖🛖hut]: https://sr.ht/~galtzo/
[💖🧪lab]: https://gitlab.com/pboling
[👨🏼‍🏫expsup-upwork]: https://www.upwork.com/freelancers/~014942e9b056abdf86?mp_source=share
[👨🏼‍🏫expsup-upwork-img]: https://img.shields.io/badge/UpWork-13544E?style=for-the-badge&logo=Upwork&logoColor=white
[👨🏼‍🏫expsup-codementor]: https://www.codementor.io/peterboling?utm_source=github&utm_medium=button&utm_term=peterboling&utm_campaign=github
[👨🏼‍🏫expsup-codementor-img]: https://img.shields.io/badge/CodeMentor-Get_Help-1abc9c?style=for-the-badge&logo=CodeMentor&logoColor=white
[🏙️entsup-tidelift]: https://tidelift.com/subscription
[🏙️entsup-tidelift-img]: https://img.shields.io/badge/Tidelift_and_Sonar-Enterprise_Support-FD3456?style=for-the-badge&logo=sonar&logoColor=white
[🏙️entsup-tidelift-sonar]: https://blog.tidelift.com/tidelift-joins-sonar
[💁🏼‍♂️peterboling]: http://www.peterboling.com
[🚂railsbling]: http://www.railsbling.com
[📜src-gl-img]: https://img.shields.io/badge/GitLab-FBA326?style=for-the-badge&logo=Gitlab&logoColor=orange
[📜src-gl]: https://gitlab.com/galtzo-floss/shields-badge/
[📜src-cb-img]: https://img.shields.io/badge/CodeBerg-4893CC?style=for-the-badge&logo=CodeBerg&logoColor=blue
[📜src-cb]: https://codeberg.org/galtzo-floss/shields-badge
[📜src-gh-img]: https://img.shields.io/badge/GitHub-238636?style=for-the-badge&logo=Github&logoColor=green
[📜src-gh]: https://github.com/galtzo-floss/shields-badge
[📜docs-cr-rd-img]: https://img.shields.io/badge/RubyDoc-Current_Release-943CD2?style=for-the-badge&logo=readthedocs&logoColor=white
[📜docs-head-rd-img]: https://img.shields.io/badge/YARD_on_Galtzo.com-HEAD-943CD2?style=for-the-badge&logo=readthedocs&logoColor=white
[📜wiki]: https://gitlab.com/galtzo-floss/shields-badge/-/wikis/home
[📜wiki-img]: https://img.shields.io/badge/wiki-examples-943CD2.svg?style=for-the-badge&logo=Wiki&logoColor=white
[👽dl-rank]: https://rubygems.org/gems/shields-badge
[👽dl-ranki]: https://img.shields.io/gem/rd/shields-badge.svg
[👽oss-help]: https://www.codetriage.com/galtzo-floss/shields-badge
[👽oss-helpi]: https://www.codetriage.com/galtzo-floss/shields-badge/badges/users.svg
[👽version]: https://rubygems.org/gems/shields-badge
[👽versioni]: https://img.shields.io/gem/v/shields-badge.svg
[🔑qlty-mnt]: https://qlty.sh/gh/galtzo-floss/projects/shields-badge
[🔑qlty-mnti♻️]: https://qlty.sh/badges/35dfa7f0-ac27-4223-b35a-2b5561e495b5/maintainability.svg
[🔑qlty-cov]: https://qlty.sh/gh/galtzo-floss/projects/shields-badge
[🔑qlty-covi♻️]: https://qlty.sh/badges/35dfa7f0-ac27-4223-b35a-2b5561e495b5/test_coverage.svg
[🔑codecov]: https://codecov.io/gh/galtzo-floss/shields-badge
[🔑codecovi♻️]: https://codecov.io/gh/galtzo-floss/shields-badge/graph/badge.svg?token=bNqSzNiuo2
[🔑coveralls]: https://coveralls.io/github/galtzo-floss/shields-badge?branch=main
[🔑coveralls-img]: https://coveralls.io/repos/github/galtzo-floss/shields-badge/badge.svg?branch=main
[🔑depfu]: https://depfu.com/github/galtzo-floss/shields-badge?project_id=63700
[🔑depfui♻️]: https://badges.depfu.com/badges/e77d4201589e563af3c7bef975e5cd0b/count.svg
[🖐codeQL]: https://github.com/galtzo-floss/shields-badge/security/code-scanning
[🖐codeQL-img]: https://github.com/galtzo-floss/shields-badge/actions/workflows/codeql-analysis.yml/badge.svg
[🚎2-cov-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/coverage.yml
[🚎2-cov-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/coverage.yml/badge.svg
[🚎3-hd-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/heads.yml
[🚎3-hd-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/heads.yml/badge.svg
[🚎4-lg-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/legacy.yml
[🚎4-lg-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/legacy.yml/badge.svg
[🚎5-st-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/style.yml
[🚎5-st-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/style.yml/badge.svg
[🚎6-s-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/supported.yml
[🚎6-s-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/supported.yml/badge.svg
[🚎9-t-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/truffle.yml
[🚎9-t-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/truffle.yml/badge.svg
[🚎10-j-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/jruby.yml
[🚎10-j-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/jruby.yml/badge.svg
[🚎11-c-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/current.yml
[🚎11-c-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/current.yml/badge.svg
[🚎12-crh-wf]: https://github.com/galtzo-floss/shields-badge/actions/workflows/current-runtime-heads.yml
[🚎12-crh-wfi]: https://github.com/galtzo-floss/shields-badge/actions/workflows/current-runtime-heads.yml/badge.svg
[💎ruby-2.3i]: https://img.shields.io/badge/Ruby-2.3-DF00CA?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.4i]: https://img.shields.io/badge/Ruby-2.4-DF00CA?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.5i]: https://img.shields.io/badge/Ruby-2.5-DF00CA?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.6i]: https://img.shields.io/badge/Ruby-2.6-DF00CA?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-2.7i]: https://img.shields.io/badge/Ruby-2.7-DF00CA?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.0i]: https://img.shields.io/badge/Ruby-3.0-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.1i]: https://img.shields.io/badge/Ruby-3.1-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.2i]: https://img.shields.io/badge/Ruby-3.2-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-3.3i]: https://img.shields.io/badge/Ruby-3.3-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[💎ruby-c-i]: https://img.shields.io/badge/Ruby-current-CC342D?style=for-the-badge&logo=ruby&logoColor=green
[💎ruby-headi]: https://img.shields.io/badge/Ruby-HEAD-CC342D?style=for-the-badge&logo=ruby&logoColor=blue
[💎truby-22.3i]: https://img.shields.io/badge/Truffle_Ruby-22.3-34BCB1?style=for-the-badge&logo=ruby&logoColor=pink
[💎truby-23.0i]: https://img.shields.io/badge/Truffle_Ruby-23.0-34BCB1?style=for-the-badge&logo=ruby&logoColor=pink
[💎truby-23.1i]: https://img.shields.io/badge/Truffle_Ruby-23.1-34BCB1?style=for-the-badge&logo=ruby&logoColor=pink
[💎truby-c-i]: https://img.shields.io/badge/Truffle_Ruby-current-34BCB1?style=for-the-badge&logo=ruby&logoColor=green
[💎truby-headi]: https://img.shields.io/badge/Truffle_Ruby-HEAD-34BCB1?style=for-the-badge&logo=ruby&logoColor=blue
[💎jruby-9.1i]: https://img.shields.io/badge/JRuby-9.1-FBE742?style=for-the-badge&logo=ruby&logoColor=red
[💎jruby-9.2i]: https://img.shields.io/badge/JRuby-9.2-FBE742?style=for-the-badge&logo=ruby&logoColor=red
[💎jruby-9.3i]: https://img.shields.io/badge/JRuby-9.3-FBE742?style=for-the-badge&logo=ruby&logoColor=red
[💎jruby-9.4i]: https://img.shields.io/badge/JRuby-9.4-FBE742?style=for-the-badge&logo=ruby&logoColor=red
[💎jruby-c-i]: https://img.shields.io/badge/JRuby-current-FBE742?style=for-the-badge&logo=ruby&logoColor=green
[💎jruby-headi]: https://img.shields.io/badge/JRuby-HEAD-FBE742?style=for-the-badge&logo=ruby&logoColor=blue
[🤝gh-issues]: https://github.com/galtzo-floss/shields-badge/issues
[🤝gh-pulls]: https://github.com/galtzo-floss/shields-badge/pulls
[🤝gl-issues]: https://gitlab.com/galtzo-floss/shields-badge/-/issues
[🤝gl-pulls]: https://gitlab.com/galtzo-floss/shields-badge/-/merge_requests
[🤝cb-issues]: https://codeberg.org/galtzo-floss/shields-badge/issues
[🤝cb-pulls]: https://codeberg.org/galtzo-floss/shields-badge/pulls
[🤝cb-donate]: https://donate.codeberg.org/
[🤝contributing]: CONTRIBUTING.md
[🔑codecov-g♻️]: https://codecov.io/gh/galtzo-floss/shields-badge/graphs/tree.svg?token=bNqSzNiuo2
[🖐contrib-rocks]: https://contrib.rocks
[🖐contributors]: https://github.com/galtzo-floss/shields-badge/graphs/contributors
[🖐contributors-img]: https://contrib.rocks/image?repo=galtzo-floss/shields-badge
[🚎contributors-gl]: https://gitlab.com/galtzo-floss/shields-badge/-/graphs/main
[🪇conduct]: CODE_OF_CONDUCT.md
[🪇conduct-img]: https://img.shields.io/badge/Contributor_Covenant-2.1-259D6C.svg
[📌pvc]: http://guides.rubygems.org/patterns/#pessimistic-version-constraint
[📌semver]: https://semver.org/spec/v2.0.0.html
[📌semver-img]: https://img.shields.io/badge/semver-2.0.0-259D6C.svg?style=flat
[📌semver-breaking]: https://github.com/semver/semver/issues/716#issuecomment-869336139
[📌major-versions-not-sacred]: https://tom.preston-werner.com/2022/05/23/major-version-numbers-are-not-sacred.html
[📌changelog]: CHANGELOG.md
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-34495e.svg?style=flat
[📌gitmoji]:https://gitmoji.dev
[📌gitmoji-img]:https://img.shields.io/badge/gitmoji_commits-%20😜%20😍-34495e.svg?style=flat-square
[🧮kloc]: https://www.youtube.com/watch?v=dQw4w9WgXcQ
[🧮kloc-img]: https://img.shields.io/badge/KLOC-0.362-FFDD67.svg?style=for-the-badge&logo=YouTube&logoColor=blue
[🔐security]: SECURITY.md
[🔐security-img]: https://img.shields.io/badge/security-policy-259D6C.svg?style=flat
[📄copyright-notice-explainer]: https://opensource.stackexchange.com/questions/5778/why-do-licenses-such-as-the-mit-license-specify-a-single-year
[📄license]: LICENSE.txt
[📄license-ref]: https://opensource.org/licenses/MIT
[📄license-img]: https://img.shields.io/badge/License-MIT-259D6C.svg
[📄ilo-declaration]: https://www.ilo.org/declaration/lang--en/index.htm
[📄ilo-declaration-img]: https://img.shields.io/badge/ILO_Fundamental_Principles-✓-259D6C.svg?style=flat
[🚎yard-current]: http://rubydoc.info/gems/shields-badge
[🚎yard-head]: https://shields-badge.galtzo.com
[💎stone_checksums]: https://github.com/pboling/stone_checksums
[💎SHA_checksums]: https://gitlab.com/galtzo-floss/shields-badge/-/tree/main/checksums
[💎rlts]: https://github.com/rubocop-lts/rubocop-lts
[💎rlts-img]: https://img.shields.io/badge/code_style_%26_linting-rubocop--lts-34495e.svg?plastic&logo=ruby&logoColor=white
[💎d-in-dvcs]: https://railsbling.com/posts/dvcs/put_the_d_in_dvcs/
[✉️discord-invite]: https://discord.gg/3qme4XHNKN
[✉️discord-invite-img]: https://img.shields.io/discord/1373797679469170758?style=for-the-badge

<details>
  <summary>Deprecated Badges</summary>

CodeCov currently fails to parse the coverage upload.

[![CodeCov Test Coverage][🔑codecovi♻️]][🔑codecov]

[![Coverage Graph][🔑codecov-g♻️]][🔑codecov]

</details>