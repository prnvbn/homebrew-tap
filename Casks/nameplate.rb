cask 'nameplate' do
  version '0.6.0'
  sha256 '08cc349114c7740b89500f13e5d10e38edc484ccd52d707cc55e3312457853fb'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.6.0/Nameplate-0.6.0-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
