cask "tungsten-edge" do
  version "0.5.0"
  sha256 "2643cc5a28d2b01d4131d6e6d7c6add103e3ce6176c71420f8bcc3606d40abe2"

  url "https://github.com/moonbai-studio/tungsten-edge/releases/download/v#{version}/Tungsten-Edge-#{version}.zip"
  name "Tungsten Edge"
  desc "以「窗口」为单位的 macOS 底部任务条，替代系统程序坞"
  homepage "https://github.com/moonbai-studio/tungsten-edge"

  depends_on macos: :monterey

  app "Tungsten Edge.app"

  caveats <<~EOS
    Tungsten Edge 尚未签名公证。若首次打开被系统拦截，在「应用程序」里
    右键（Control+点击）→ 打开，或运行：
      xattr -dr com.apple.quarantine "/Applications/Tungsten Edge.app"
    首次运行需在「系统设置 → 隐私与安全性 → 辅助功能」中授权。
  EOS

  zap trash: [
    "~/Library/Preferences/com.caye.macosdockcc.v2.plist",
  ]
end
