#
class secure_linux_cis::distribution::centos8::cis_1_11 {
  include secure_linux_cis::rules::ensure_system_wide_crypto_policy_is_FUTURE_or_FIPS
}
