cask 'lunar' do
  version '2.9.1'
  sha256 '00976d6f18baffc7b1507be3b5eaddd2a73517d2185d1fe42dd2bc493df98aa5'

  # github.com/alin23/Lunar was verified as official when first introduced to the cask
  url "https://github.com/alin23/Lunar/releases/download/v#{version}/Lunar-#{version}.dmg"
  appcast 'https://github.com/alin23/Lunar/releases.atom'
  name 'Lunar'
  homepage 'https://lunar.fyi/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Lunar.app'

  zap trash: [
               '~/Library/Application Support/Lunar',
               '~/Library/Application Support/site.lunarapp.Lunar',
               '~/Library/Preferences/site.lunarapp.Lunar.plist',
             ]
end
