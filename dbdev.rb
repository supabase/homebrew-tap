# typed: false
# frozen_string_literal: true

class Dbdev < Formula
  desc "Dbdev CLI"
  homepage "https://database.dev/"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-macos-amd64.tar.gz"
      sha256 "ad6aee6bbc8a2f6d447b90c80b7b9b5862ea9497cb21d8df39d023486cec1690"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-macos-amd64.tar.gz"
      sha256 "ad6aee6bbc8a2f6d447b90c80b7b9b5862ea9497cb21d8df39d023486cec1690"

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-linux-arm64.tar.gz"
      sha256 "26654f66ec42d23d29e0953a84083daa48a9b70c69553b9184ac6a635bcab724"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-linux-amd64.tar.gz"
      sha256 "c67f7477ed6e2ac272207c33c60a9cc839605f6e4edd1187ccad983fb269c106"

      def install
        bin.install "dbdev"
      end
    end
  end
end
