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
      sha256 "826cad4edbd665498d03c503230302880dba64a0b893c6750271a9a365aecba9"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-macos-arm64.tar.gz"
      sha256 "826cad4edbd665498d03c503230302880dba64a0b893c6750271a9a365aecba9"

      def install
        bin.install "dbdev"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-linux-arm64.tar.gz"
      sha256 "5b867c60eaee70b02bdec66543b507817937678b30eb3fa5480cc267130f15b8"

      def install
        bin.install "dbdev"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/supabase/dbdev/releases/download/v0.1.7/dbdev-v0.1.7-linux-amd64.tar.gz"
      sha256 "911e66420682cea8d694a75134327daaf069cb686662f16a8e6f9b13c39d67b0"

      def install
        bin.install "dbdev"
      end
    end
  end
end
