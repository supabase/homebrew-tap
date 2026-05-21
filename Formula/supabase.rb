class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.101.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.101.0/supabase_2.101.0_darwin_arm64.tar.gz"
      sha256 "87cfbc6d8647d7eb7d204351d46aaf4a734d7449c6ca5c5c628a5f5d0be60f74"
    else
      url "https://github.com/supabase/cli/releases/download/v2.101.0/supabase_2.101.0_darwin_amd64.tar.gz"
      sha256 "a2ad6f801c14d325a9e58829e4e6d00ed944befea85607cdc6a5c1ba88517d68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.101.0/supabase_2.101.0_linux_arm64.tar.gz"
      sha256 "1776c7f75ecf635e519396aada1ebb4788e55a7776cf713a5ea3140d52e69200"
    else
      url "https://github.com/supabase/cli/releases/download/v2.101.0/supabase_2.101.0_linux_amd64.tar.gz"
      sha256 "285877ef9de845d76487772e0d36019a095ee28b527b9abbd6739eeba4d3dbf9"
    end
  end

  def install
    bin.install "supabase"
    bin.install "supabase-go" if File.exist?("supabase-go")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
