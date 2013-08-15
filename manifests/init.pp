# == Class: iesec
#
# == Description
#
class iesec (
  $iesec_admin = true,
  $iesec_users = true,
) {
  if $::operatingsystem != 'Windows' {
    fail ("Class[iesec] can only be applied to Windows systems. It cannot be used on \"${::operatingsystem}.\"")
  }

  validate_bool($iesec_admin)
  validate_bool($iesec_users)

  if $iesec_admin {
    $iesec_admin = 1
  } else {
    $iesec_admin = 0
  }

  if $iesec_users {
    $iesec_users = 1
  } else {
    $iesec_users = 0
  }

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
