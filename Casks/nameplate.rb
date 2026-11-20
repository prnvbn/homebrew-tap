cask 'nameplate' do
  version '0.6.1'
  sha256 'c0487f6ea3b0467ae5bc228fc4fa6e5648d5708c8067a651172753400e533f47'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.6.1/Nameplate-0.6.1-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
