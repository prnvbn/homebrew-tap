cask 'nameplate' do
  version '0.5.0'
  sha256 '95aacccfb9315da8f470971645147793d349351d0023dffc1d1892cc3ac9a4ab'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.5.0/Nameplate-0.5.0-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
