define screen::screenrc(
  $source = 'normal',
  $target = '/root/.screenrc',
  $owner  = 'root',
  $group  = '0'
) {
  file{$name:
    path => $target,
    source => "puppet://$server/modules/screen/$source",
    owner => $owner, group => $group, mode => 0600;
  }
}
