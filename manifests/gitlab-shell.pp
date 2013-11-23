class gitlab::gitlab-shell (
  $vhost = $::fqdn
)
{

  anchor { "gitlab::gitlab-shell::begin": }
  anchor { "gitlab::gitlab-shell::end": }


  vcsrepo { 'gitlab-shell':
    ensure   => present,
    path     => '/home/git/gitlab-shell',
    provider => git,
    source   => 'https://github.com/gitlabhq/gitlab-shell.git',
    revision => 'v1.4.0',
    owner    => 'git',
    user     => 'git',
    require  => Anchor["gitlab::gitlab-shell::begin"],
  } ->

  file { '/home/git/gitlab-shell/config.yml':
    ensure   => present,
    owner    => 'git',
    group    => 'git',
    content  => template('gitlab/gitlab-shell_config.yml.erb'),
  } ->

  exec { '/home/git/gitlab-shell/bin/install':
    cwd      => '/home/git/gitlab-shell',
    notify   => Anchor["gitlab::gitlab-shell::end"],
  }

}
