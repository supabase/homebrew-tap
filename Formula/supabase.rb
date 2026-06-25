class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0/supabase_2.108.0_darwin_arm64.tar.gz"
      sha256 "923205ce61ecda2285f87431e439a8bfeee9486f858c073acdc3fb3b152bdc4e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0/supabase_2.108.0_darwin_amd64.tar.gz"
      sha256 "5e73c18399cee920bee99e93c9eda704e0211165549ef1a002775af85d08ddab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0/supabase_2.108.0_linux_arm64.tar.gz"
      sha256 "fbf787ec3db3a4b74dd86d15c5fcaf25998c3aad47cee3f6ae26d8dfbc93d4df"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0/supabase_2.108.0_linux_amd64.tar.gz"
      sha256 "01e467428fe615952cfd576f964e4fb053fecb546a4d81dee85853ec0f3f8220"
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
