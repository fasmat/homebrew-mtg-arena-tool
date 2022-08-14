# typed: false
# frozen_string_literal: true

cask "mtg-arena-tool" do
  version "6.1.39"
  sha256 :no_check

  url "https://github.com/mtgatool/mtgatool-desktop/releases/download/v#{version}/mtgatool-desktop-#{version}.dmg",
      verified: "https://github.com/mtgatool/mtgatool-desktop"
  name "MTG Arena Tool"
  desc "Collection browser, deck tracker and statistics manager for MTG Arena"
  homepage "https://mtgatool.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "mtgatool-desktop.app"
end
