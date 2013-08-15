# == Class: iesec
#
# == Description
#
class iesec (
  $iesec_admin = 1,
  $iesec_users = 1,
) {
  validate_slength($iesec_admin,1)
  validate_slength($iesec_users,1)

  # Disable IE SEC for Admins
  registry_value { 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled':
    type  => dword,
    data  => $iesec_admin,
  }

  # Disable IE SEC for Users
  registry_value { 'HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled':
    type  => dword,
    data  => $iesec_users,
  }
}
