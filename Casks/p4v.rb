cask 'p4v' do
  version '2017.2'
  sha256 '1c758ce705703e1ce8f643308b44105699f5f871aa4fcb554ce0c77ed78a15f5'

  url "http://cdist2.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/P4V.dmg"
  name 'Perforce Visual Client'
  name 'P4V'
  homepage 'https://www.perforce.com/products/helix-core-apps/helix-visual-client-p4v'

  app 'p4v.app'
  app 'p4admin.app'
  app 'p4merge.app'
  binary 'p4vc'

  zap delete: [
                '~/Library/Preferences/com.perforce.p4v',
                '~/Library/Preferences/com.perforce.p4v.plist',
                '~/Library/Saved Application State/com.perforce.p4v.savedState',
              ]
end
