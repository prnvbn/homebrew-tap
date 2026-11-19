cask 'nameplate' do
  version '0.1.1'
  sha256 '91876c3a303b9eed5c4a96b3c363ef68b86d02f92c2e956fe0183501cf08ed19'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.1.1/Nameplate-0.1.1-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
