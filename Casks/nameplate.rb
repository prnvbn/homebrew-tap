cask 'nameplate' do
  version '0.0.3'
  sha256 'ed7a26761f5a01604e5babe8f69897a85e52557cad58d7af99e1bb5d278a14d4'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.0.3/Nameplate-0.0.3-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
