# typed: false
# frozen_string_literal: true

class Dbdev < Formula
  desc "Dbdev CLI"
  homepage "https://database.dev/"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.4/dbdev-v0.1.4-macos-amd64.tar.gz"
      sha256 "1a18ccd4bce9bc8699fec76b05c6c5864dfd7279abdfb43e5eb794f2efa3903e"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.4/dbdev-v0.1.4-macos-amd64.tar.gz"
      sha256 "1a18ccd4bce9bc8699fec76b05c6c5864dfd7279abdfb43e5eb794f2efa3903e"

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.4/dbdev-v0.1.4-linux-arm64.tar.gz"
      sha256 "db5d722189995d24adfefde8517703bb995dc0f17629e27c6123b0a0253857b1"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.4/dbdev-v0.1.4-linux-amd64.tar.gz"
      sha256 "b4a1110262fdc6399078ed259d3ef1ce29bf7876261a786f7481adb438b992fd"

      def install
        bin.install "dbdev"
      end
    end
  end
end
