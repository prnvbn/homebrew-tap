cask 'nameplate' do
  version '0.3.0'
  sha256 '8746c1a2b2ac79c577c6daac38e542f5cbe3714c584dabd99fbaa4c56962e09e'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.3.0/Nameplate-0.3.0-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
