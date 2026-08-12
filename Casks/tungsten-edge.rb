cask "tungsten-edge" do
  version "0.8.0"
  sha256 "3ed428d85324ec036e8fa41a2e37fa7fe026378781ed343b0ac3ad0fa51802ff"

  # 2026-08-13 起编译好的包只在官网发布，GitHub 只保留源码，
  # release 页面不再附带 zip——所以这里必须指向官网，不能指回 GitHub。
  url "https://tungstenedge.app/download/Tungsten-Edge-#{version}.zip"
  name "Tungsten Edge"
  desc "以「窗口」为单位的 macOS 底部任务条，替代系统程序坞"
  homepage "https://tungstenedge.app"

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
