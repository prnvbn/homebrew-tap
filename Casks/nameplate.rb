cask 'nameplate' do
  version '0.2.0'
  sha256 '9d5bdf2564a1fcbddeef99216073188136e87f1f32473def7de94698f0228178'

  url 'https://github.com/prnvbn/Nameplate/releases/download/v0.2.0/Nameplate-0.2.0-macos-arm64.dmg'
  name 'Nameplate'
  desc 'Readable window labels in macOS Mission Control'
  homepage 'https://github.com/prnvbn/Nameplate'

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app 'Nameplate.app'
end
