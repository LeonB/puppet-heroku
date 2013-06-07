# Class: heroku::params
#
# This class defines default parameters used by the main module class heroku
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to heroku class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class heroku::params {

  ### Application related parameters

  $packages = $::operatingsystem ? {
    default => ['libpq-dev']
  }

    $gems = $::operatingsystem ? {
        default => ['heroku']
    }

  $enabled = true

}
