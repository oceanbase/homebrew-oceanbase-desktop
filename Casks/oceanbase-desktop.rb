cask 'oceanbase-desktop' do
  version '1.1.0'
  sha256 '04673ad60c1f52418a3a62e423c4ceb5792f70016addfaec6ee989783c91b601'

  url "https://obbusiness-private.oss-cn-shanghai.aliyuncs.com/download-center/opensource/obdesktop/4.3.5.3/OceanBase-Desktop-#{version}-arm64.dmg"
  name 'https://open.oceanbase.com/'
  desc 'OceanBase Desktop - A GUI tool for installing and managing OceanBase'
  homepage 'https://www.oceanbase.com/'

  depends_on cask: 'orbstack'

  app 'OceanBase-Desktop.app'

  zap trash: [
    '~/Library/Application Support/OceanBase Desktop',
    '~/Library/Preferences/com.oceanbase.desktop.plist',
    '~/Library/Saved Application State/com.oceanbase.desktop.savedState'
  ]
end