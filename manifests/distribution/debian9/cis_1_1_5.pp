#
class secure_linux_cis::distribution::debian9::cis_1_1_5 {
  include secure_linux_cis::rules::ensure_noexec_option_set_on_tmp_partition
}
