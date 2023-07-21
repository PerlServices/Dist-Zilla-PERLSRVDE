[![Kwalitee status](https://cpants.cpanauthors.org/dist/Dist-Zilla-PERLSRVDE.png)](https://cpants.cpanauthors.org/dist/Dist-Zilla-PERLSRVDE)
[![GitHub issues](https://img.shields.io/github/issues/perlservices/Dist-Zilla-PERLSRVDE.svg)](https://github.com/perlservices/Dist-Zilla-PERLSRVDE/issues)
[![CPAN Cover Status](https://cpancoverbadge.perl-services.de/Dist-Zilla-PERLSRVDE-1.1.2)](https://cpancoverbadge.perl-services.de/Dist-Zilla-PERLSRVDE-1.1.2)
[![Cpan license](https://img.shields.io/cpan/l/Dist-Zilla-PERLSRVDE.svg)](https://metacpan.org/release/Dist-Zilla-PERLSRVDE)

# NAME

Dist::Zilla::PERLSRVDE - A dummy module for this namespace

# VERSION

version 1.1.2

# DESCRIPTION

This is a collection of [Dist::Zilla](https://metacpan.org/pod/Dist%3A%3AZilla) related modules
used at [Perl-Services.de](https://perl-services.de).

# MODULES

## Dist::Zilla::PluginBundle::PERLSRVDE

This is the [PluginBundle](https://metacpan.org/pod/Dist%3A%3AZilla%3A%3APluginBundle%3A%3APERLSRVDE)
to include the Plugins we usually use.



# Development

The distribution is contained in a Git repository, so simply clone the
repository

```
$ git clone git://github.com/perlservices/Dist-Zilla-PERLSRVDE.git
```

and change into the newly-created directory.

```
$ cd Dist-Zilla-PERLSRVDE
```

The project uses [`Dist::Zilla`](https://metacpan.org/pod/Dist::Zilla) to
build the distribution, hence this will need to be installed before
continuing:

```
$ cpanm Dist::Zilla
```

To install the required prequisite packages, run the following set of
commands:

```
$ dzil authordeps --missing | cpanm
$ dzil listdeps --author --missing | cpanm
```

The distribution can be tested like so:

```
$ dzil test
```

To run the full set of tests (including author and release-process tests),
add the `--author` and `--release` options:

```
$ dzil test --author --release
```

# AUTHOR

Renee Baecker <reneeb@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2022 by Renee Baecker.

This is free software, licensed under:

```
The Artistic License 2.0 (GPL Compatible)
```
