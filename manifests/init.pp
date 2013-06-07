class heroku(
  $package_name = params_lookup( 'package_name' ),
  $enabled       = params_lookup( 'enabled' )
  ) inherits heroku::params {

    $ensure = $enabled ? {
      true => present,
      false => absent
    }

  include heroku::package, heroku::config
}
