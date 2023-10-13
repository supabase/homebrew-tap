# typed: false
# frozen_string_literal: true

class Dbdev < Formula
    desc "Dbdev CLI"
    homepage "https://database.dev/"
    version "0.1.2"
    license "MIT"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/supabase/dbdev/releases/download/v0.1.2/dbdev-v0.1.2-macos-amd64.tar.gz"
        sha256 "575278d7e1718ee8054753a3d2952d70051fb1ccf8ec833f3886254f2dbb93b6"
  
        def install
          bin.install "dbdev"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/dbdev/releases/download/v0.1.2/dbdev-v0.1.2-macos-amd64.tar.gz"
        sha256 "575278d7e1718ee8054753a3d2952d70051fb1ccf8ec833f3886254f2dbb93b6"
  
        def install
          bin.install "dbdev"
        end
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "https://github.com/supabase/dbdev/releases/download/v0.1.2/dbdev-v0.1.2-linux-arm64.tar.gz"
        sha256 "f270ed19c5bc9712226cf1dd1335c733a49b65b6b7c75a99bc62a4e6ae0d568a"
  
        def install
          bin.install "dbdev"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/supabase/dbdev/releases/download/v0.1.2/dbdev-v0.1.2-linux-amd64.tar.gz"
        sha256 "93f7ab6c2f97294ff199f78dbd4567a5927770ad798cc37b668de2e3728d2c0b"
  
        def install
          bin.install "dbdev"
        end
      end
    end
  end