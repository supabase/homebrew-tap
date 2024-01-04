# typed: false
# frozen_string_literal: true

class Dbdev < Formula
  desc "Dbdev CLI"
  homepage "https://database.dev/"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.6/dbdev-v0.1.6-macos-amd64.tar.gz"
      sha256 "64d2aaba1e57383a9ca5fc0cdaf4ccc8d499ca19cf07270f0c3cda4383dbbfbc"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.6/dbdev-v0.1.6-macos-amd64.tar.gz"
      sha256 "64d2aaba1e57383a9ca5fc0cdaf4ccc8d499ca19cf07270f0c3cda4383dbbfbc"

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.6/dbdev-v0.1.6-linux-arm64.tar.gz"
      sha256 "7dc3a31aba324fd8796ebed3c50da11c4477da64412fb2b5aa71e8d2a3100b3f"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.6/dbdev-v0.1.6-linux-amd64.tar.gz"
      sha256 "b32925e1f215ad6c71af153399775d44c0b2959257513514893241ad198a9d12"

      def install
        bin.install "dbdev"
      end
    end
  end
end
