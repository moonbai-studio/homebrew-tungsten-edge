# homebrew-tungsten-edge

[Tungsten Edge 钨极](https://github.com/moonbai-studio/tungsten-edge) 的 Homebrew tap。

```bash
brew install --cask moonbai-studio/tungsten-edge/tungsten-edge
```

一条就够——Homebrew 会自动添加这个 tap、把 cask 记入信任表，然后安装。

想以后用短名 `brew install --cask tungsten-edge`，先运行 `brew tap moonbai-studio/tungsten-edge`
和 `brew trust moonbai-studio/tungsten-edge`：命令行里不带 tap 名时，短名会报
`Refusing to load cask ... from untrusted tap`（Homebrew 5.1.15 起对第三方 tap 默认要求显式信任）。

不想用 Homebrew 的话，直接从[官网](https://tungstenedge.app)下载 dmg 拖进「应用程序」即可，
安装包已通过 Apple 签名与公证。
