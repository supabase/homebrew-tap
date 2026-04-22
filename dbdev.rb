# typed: false
# frozen_string_literal: true

class Dbdev < Formula
  desc "Dbdev CLI"
  homepage "https://database.dev/"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-macos-arm64.tar.gz"
      sha256 "f7939235c2e5d2d79c3856f5ede84f575db644b4829fc19ba8ed4483aa75ecf3"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-macos-arm64.tar.gz"
      sha256 "f7939235c2e5d2d79c3856f5ede84f575db644b4829fc19ba8ed4483aa75ecf3"

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-linux-arm64.tar.gz"
      sha256 "16b6424be5599a262b687c354ef67dcd7d1f5299cf49782aa6d842a867b7e5aa"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-linux-amd64.tar.gz"
      sha256 "1b1f1eab721082baa317ce5092e80bd5b2197e6f14181486ef9995c89b3afcac"

      def install
        bin.install "dbdev"
      end
    end
  end
end
