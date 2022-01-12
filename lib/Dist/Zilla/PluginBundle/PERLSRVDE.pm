package Dist::Zilla::PluginBundle::PERLSRVDE;

# ABSTRACT: The plugin bundle we use at Perl-Services.de

use strict;
use warnings;

use Moose;

has 'is_cpan' => (
    is  => 'ro',
    isa => 'Str',
);

has 'repository_type' => (
    is  => 'ro',
    isa => 'Str',
);

has 'bugtracker' => (
    is  => 'ro',
    isa => 'Str',
);

sub configure {
    my ($self) = @_;

    $self->add_plugins(
        [
            'ContributorsFile' => {
                filename => 'CONTRIBUTORS',
            },
        ],
        [
            'CheckChangesHasContent' => {
            },
        ],
        [
            'NextRelease' => {
                format => '%-9v%T %{yyyy-MM-dd HH:mm:ss VVVV}d',
            },
        ],
        qw/
            SyncCPANfile
            PkgVersion
            PodWeaver
        /,
        [
            'Git::Contributors' => {
                include_authors => 1,
            },
        ],
        qw/
            PodSyntaxTests
            PodCoverageTests

            Test::NoTabs
            Test::NoBOM
            Test::Perl::Critic

            MetaJSON
            MetaProvides::Package

            ExecDir
        /,
    );

    $self->_meta_resources;
    $self->add_bundle('@Git');

    if ( $self->is_cpan ) {
        $self->add_plugins(
            [
                'ReadmeAnyFromPod / MarkdownInRoot' => {
                    phase => 'build',
                },
            ],
            [
                'ReadmeAnyFromPod / TextInBuild' => {
                    phase => 'build',
                },
            ],
            [
                'ReadmeAddDevInfo' => {
                    phase                 => 'build',
                    before                => '# AUTHOR',
                    add_contribution_file => 1,
                },
            ],
            [
                GithubREADMEBadge => {
                    badges => [ qw/cpants issues cpancover/ ],
                    phase  => 'build',
                    place  => 'top',
                },
            ],
        );
    }
}

sub _meta_resources {
    my ($self) = @_;

    my %meta_resources;

    $meta_resources->{'bugtracker.web'} = $self->bugtracker if $self->bugtracker;

    my $type = $self->repository_type;

    if ( $type eq 'github' ) {
        
    }
    elsif ( $type eq 'gitlab' ) {
        
    }
    elsif ( $type eq 'internal' ) {
        my $url;
    }

    $meta_resources->{'repository.type'} = $type if $type

    return if !%meta_resources;

    $self->add_plugin(
        [ 'MetaResources' => \%meta_resources ],
    );

    return 1;
}

1;
