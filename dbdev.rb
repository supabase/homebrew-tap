# typed: false
# frozen_string_literal: true

class Dbdev < Formula
  desc "Dbdev CLI"
  homepage "https://database.dev/"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.3/dbdev-v0.1.3-macos-amd64.tar.gz"
      sha256 "da4412fc311e82d880b2fec1b3da33ec0b9c15ec1cbbf456d1736f53fe3069a1"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.3/dbdev-v0.1.3-macos-amd64.tar.gz"
      sha256 "da4412fc311e82d880b2fec1b3da33ec0b9c15ec1cbbf456d1736f53fe3069a1"

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.3/dbdev-v0.1.3-linux-arm64.tar.gz"
      sha256 "23b572001fdf94f10f01b31e0e88f778d3f53cbaa9bc3fca26b342b0a273f1f1"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.3/dbdev-v0.1.3-linux-amd64.tar.gz"
      sha256 "d397589028475d2b430d77e8785527fbd0eb6d07e379a0c5cf1bc35246fc2fe4"

      def install
        bin.install "dbdev"
      end
    end
  end
end
