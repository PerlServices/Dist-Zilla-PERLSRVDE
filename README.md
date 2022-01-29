[![Kwalitee status](https://cpants.cpanauthors.org/dist/Dist-Zilla-PERLSRVDE.png)](https://cpants.cpanauthors.org/dist/Dist-Zilla-PERLSRVDE)
[![GitHub issues](https://img.shields.io/github/issues/Dist-Zilla-PERLSRVDE/issues.svg)](https://github.com/Dist-Zilla-PERLSRVDE/issues/issues)
[![CPAN Cover Status](https://cpancoverbadge.perl-services.de/Dist-Zilla-PERLSRVDE-0.0.1)](https://cpancoverbadge.perl-services.de/Dist-Zilla-PERLSRVDE-0.0.1)

# NAME

Dist::Zilla::PluginBundle::PERLSRVDE - The plugin bundle we use at Perl-Services.de

# VERSION

version 0.0.1

# SYNOPSIS

```
; in dist.ini
[@PERLSRVDE]
```

Using ["Options"](#options):

```
; in dist.ini
[@PERLSRVDE]
; we are using an internal git repository
repository_type = internal
internal_type   = git
internal_url    = git://git.internal.example/test.git
internal_web    = https://git.internal.example/test
; but the bugtracker is an other tool
bugtracker = https://our.bugtracker.example
; and it's a CPAN module, so we want to include more
; dist::zilla plugins
is_cpan = 1
; but we do not want to upload it ;-)
fake_release = 1
```

# DESCRIPTION

This is a [Dist::Zilla](https://metacpan.org/pod/Dist%3A%3AZilla) PluginBundle. It lists the plugins we use at [https://perl-services.de|Perl-Services.de](https://perl-services.de|Perl-Services.de).
It is roughly equivalent to the following dist.ini:

```
[ContributorsFile]
filename = CONTRIBUTORS

[CheckChangesHasContent]

[NextRelease]
format=%-9v%T %{yyyy-MM-dd HH:mm:ss VVVV}d

[SyncCPANfile]
[PkgVersion]
[PodWeaver]

[@Filter]
-bundle = @Basic
-remove = Readme
-remove = UploadToCPAN

[Git::Contributors]
include_authors = 1

[PodSyntaxTests]
[PodCoverageTests]
[Test::NoTabs]
[Test::NoBOM]
[Test::Perl::Critic]

[MetaProvides::Package]
[MetaJSON]

[ExecDir]

[@Git]

[PerlTidy]
perltidyrc = .perltidyrc
```

# OPTIONS

These options can be used:

- is\_cpan
- repository\_type
- repository\_path
- internal\_type
- internal\_url
- bugtracker
- fake\_release



# Development

The distribution is contained in a Git repository, so simply clone the
repository

```
$ git clone https://github.com/perlservices/Dist-Zilla-PERLSRVDE/issues.git
```

and change into the newly-created directory.

```
$ cd issues
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
