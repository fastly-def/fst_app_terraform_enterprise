test_fixtures_dir = File.join(RoboticCook::Config.build_dir, 'test', 'fixtures')

fst_apt_helper do
  destdir test_fixtures_dir
end
