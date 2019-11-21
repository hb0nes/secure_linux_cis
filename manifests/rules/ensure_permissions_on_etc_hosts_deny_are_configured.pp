#  Ensure permissions on /etc/hosts.deny are configured (Scored)
#
# Description:
# The /etc/hosts.deny file contains network information that is used by many system
# applications and therefore must be readable for these applications to operate.
#
# Rationale:
# It is critical to ensure that the /etc/hosts.deny file is protected from unauthorized write
# access. Although it is protected by default, the file permissions could be changed either
# inadvertently or through malicious actions.
#
# @summary A short summary of the purpose of this class
#
# # @param enforced Should this rule be enforced
#
# @example
#   include secure_linux_cis::ensure_permissions_on_etc_hosts_deny_are_configured

class secure_linux_cis::rules::ensure_permissions_on_etc_hosts_deny_are_configured {

  # This benchmark is managed in secure_linux_cis::ensure_permissions_on_etc_hosts_deny_are_configured

}
