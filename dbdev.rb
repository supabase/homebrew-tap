# typed: false
# frozen_string_literal: true

class Dbdev < Formula
  desc "Dbdev CLI"
  homepage "https://database.dev/"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.5/dbdev-v0.1.5-macos-amd64.tar.gz"
      sha256 "ee97c8aa153ee6474f85ba50029a9015818d006a239f85f39fba0a9c33a4ac8a"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.5/dbdev-v0.1.5-macos-amd64.tar.gz"
      sha256 "ee97c8aa153ee6474f85ba50029a9015818d006a239f85f39fba0a9c33a4ac8a"

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.5/dbdev-v0.1.5-linux-arm64.tar.gz"
      sha256 "a5e3f1d8695808ad54816d0bfb471d1c0399dcd53d9638d24a625eeefeb7cc7d"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.5/dbdev-v0.1.5-linux-amd64.tar.gz"
      sha256 "99ac4bb4627dd239c34656875eb54c72c7809b372e0ae05f7d5dffebc4ef9617"

      def install
        bin.install "dbdev"
      end
    end
  end
end
