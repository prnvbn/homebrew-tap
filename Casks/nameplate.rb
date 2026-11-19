cask 'nameplate' do
  version '0.1.0'
  sha256 '1c128fb8a0fccb29f290cc297317457118d3418897c089dbaad31287e8aee9eb'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.1.0/Nameplate-0.1.0-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
