class heroku::package {

    # Install python before this
    Class['ruby'] -> Class['heroku::package']

    package  { $heroku::packages:
        ensure => $heroku::ensure,
    }

    package  { $heroku::gems:
        ensure   => $heroku::ensure,
        provider => 'gem',
    }
}
