class heroku::package {

    # Install python before this
    Class['ruby'] -> Class['heroku::package']

    package  { $heroku::packages:
        ensure => $heroku::ensure,
        require => Apt::Source['heroku'],
    }

    package  { $heroku::gems:
        ensure   => $heroku::ensure,
        provider => 'gem',
    }

    apt::source { 'heroku':
        ensure      => $heroku::ensure,
        location    => 'http://toolbelt.heroku.com/ubuntu',
        release     => './',
        repos       => '',
        key         => '0F1B0520',
        include_src => false,
    }
}
