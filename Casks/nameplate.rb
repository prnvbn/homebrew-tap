cask 'nameplate' do
  version '0.4.0'
  sha256 '033edd5f8bb27186fe69bc857f4a6b072a56a7a05b01e6dfa3d1b5c4979a96cc'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.4.0/Nameplate-0.4.0-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
