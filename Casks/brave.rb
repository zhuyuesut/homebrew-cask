cask 'brave' do
  version '0.16.9'
  sha256 '00332b9f639e72cbbca7c7480b6b108155de2bdf90fd3e8c3c3d620168dd9898'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '02e2bb69de5bf1dc1fe59863b936a095afb67044e659898cfdf0a458ae2cb308'
  name 'Brave'
  homepage 'https://brave.com/'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
