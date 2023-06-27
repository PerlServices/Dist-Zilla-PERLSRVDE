# This file is generated by Dist::Zilla::Plugin::SyncCPANfile v0.02
# Do not edit this file directly. To change prereqs, edit the `dist.ini` file.

requires "Dist::Zilla" => "0";
requires "Dist::Zilla::Plugin::CheckChangesHasContent" => "0";
requires "Dist::Zilla::Plugin::ContributorsFile" => "0";
requires "Dist::Zilla::Plugin::ExecDir" => "0";
requires "Dist::Zilla::Plugin::Git::Contributors" => "0";
requires "Dist::Zilla::Plugin::GitHubREADME::Badge" => "0";
requires "Dist::Zilla::Plugin::MetaJSON" => "0";
requires "Dist::Zilla::Plugin::MetaProvides::Package" => "0";
requires "Dist::Zilla::Plugin::MetaResources" => "0";
requires "Dist::Zilla::Plugin::NextRelease" => "0";
requires "Dist::Zilla::Plugin::OurPkgVersion" => "0";
requires "Dist::Zilla::Plugin::PodSyntaxTests" => "0";
requires "Dist::Zilla::Plugin::PodWeaver" => "0";
requires "Dist::Zilla::Plugin::ReadmeAddDevInfo" => "0";
requires "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0";
requires "Dist::Zilla::Plugin::SyncCPANfile" => "0";
requires "Dist::Zilla::Plugin::Test::NoBOM" => "0";
requires "Dist::Zilla::Plugin::Test::NoTabs" => "0";
requires "Dist::Zilla::Plugin::Test::Perl::Critic" => "0";
requires "Dist::Zilla::Plugin::Test::Pod::Coverage::Configurable" => "0";
requires "Dist::Zilla::PluginBundle::Git" => "0";
requires "Dist::Zilla::Role::PluginBundle::Config::Slicer" => "0";
requires "Dist::Zilla::Role::PluginBundle::Easy" => "0";
requires "Dist::Zilla::Role::PluginBundle::PluginRemover" => "0";
requires "perl" => "5.020";

on 'configure' => sub {
    requires "ExtUtils::MakeMaker" => "0";
};

on 'configure' => sub {
    suggests "JSON::PP" => "2.27300";
};

on 'develop' => sub {
    requires "Pod::Coverage::TrustPod" => "0";
    requires "Test::BOM" => "0";
    requires "Test::More" => "0.88";
    requires "Test::NoTabs" => "0";
    requires "Test::Perl::Critic" => "0";
    requires "Test::Pod" => "1.41";
    requires "Test::Pod::Coverage" => "1.08";
};
