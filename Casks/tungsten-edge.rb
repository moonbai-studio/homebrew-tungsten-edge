cask "tungsten-edge" do
  version "0.9.1"
  sha256 "feb09f51249d052961a3faf5e19d9ad2fad7da257f11303b56dc6b9a630bc6e6"

  # 2026-08-13 起编译好的包只在官网发布，GitHub 只保留源码，
  # release 页面不再附带 zip——所以这里必须指向官网，不能指回 GitHub。
  url "https://tungstenedge.app/download/Tungsten-Edge-#{version}.zip"
  name "Tungsten Edge"
  desc "以「窗口」为单位的 macOS 底部任务条，替代系统程序坞"
  homepage "https://tungstenedge.app"

  depends_on macos: :monterey

  # 钨极从这一版起自带 Sparkle 自动更新。不声明的话，用户被 Sparkle 升到新版之后
  # brew 仍以为装的是 cask 里写的版本，`brew upgrade` 会把它降级重装回去。
  auto_updates true

  app "Tungsten Edge.app"

  caveats <<~EOS
    Tungsten Edge 已通过 Apple 签名与公证，双击即可打开，无需右键放行。

    首次运行需在「系统设置 → 隐私与安全性 → 辅助功能」中授权。

    从 0.8.0 或更早版本升级：0.9.0 换成了正式的开发者签名，旧的辅助功能
    授权不再生效。请先退出钨极，在辅助功能列表里选中旧的 Tungsten Edge
    条目、点「−」删掉，再重新打开并按引导重新授权。只需做这一次。
  EOS

  zap trash: [
    "~/Library/Preferences/com.caye.macosdockcc.v2.plist",
  ]
end
