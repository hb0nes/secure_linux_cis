# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include secure_linux_cis::rules::ensure_nosuid_option_set_on_run_shm_partition
class secure_linux_cis::rules::ensure_nosuid_option_set_on_run_shm_partition {
  if $facts['mountpoints']['/run/shm'] {
    augeas { '/etc/fstab - nosuid on /run/shm':
      context => '/files/etc/fstab',
      changes => [
        "ins opt after /files/etc/fstab/*[file = '/run/shm']/opt[last()]",
        "set *[file = '/run/shm']/opt[last()] nosuid",
      ],
      onlyif  => "match *[file = '/run/shm']/opt[. = 'nosuid'] size == 0",
    }
  }
}
