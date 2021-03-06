cask :v1 => 'sublime-text3' do
  version '3065'
  sha256 '373dbfcddab7fb288351763402361cd4045f4a9510eb32f81938d0c156d161c3'

  url "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%20#{version}.dmg"
  appcast 'http://www.sublimetext.com/updates/3/stable/appcast_osx.xml',
          :sha256 => 'bb8df68fe6a87966c4662948f4f147ac5dd0d1cd3a8d5342c56a11a018ff81e9'
  homepage 'http://www.sublimetext.com/3'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sublime Text 3.app'
  binary 'Sublime Text 3.app/Contents/SharedSupport/bin/subl'

  zap :delete => [
                  '~/Library/Application Support/Sublime Text 3/Installed Packages',
                  '~/Library/Application Support/Sublime Text 3/Packages',
                  '~/Library/Application Support/Sublime Text 3/Pristine Packages',
                 ],
      :rmdir  => '~/Library/Application Support/Sublime Text 3'

  caveats do
    files_in_usr_local
  end
end
