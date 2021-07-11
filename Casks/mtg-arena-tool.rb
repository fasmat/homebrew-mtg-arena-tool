# typed: false
# frozen_string_literal: true

cask "mtg-arena-tool" do
  version "5.5.22"
  sha256 :no_check

  url "https://github.com/Manuel-777/MTG-Arena-Tool/releases/download/v#{version}/MTG-Arena-Tool-#{version}.pkg",
      verified: "https://github.com/Manuel-777/MTG-Arena-Tool"
  name "MTG Arena Tool"
  desc "Collection browser, deck tracker and statistics manager for MTG Arena"
  homepage "https://mtgatool.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  pkg "MTG-Arena-Tool-#{version}.pkg"

  uninstall pkgutil: [
    "com.github.manuel777.mtgatool",
  ]
end
