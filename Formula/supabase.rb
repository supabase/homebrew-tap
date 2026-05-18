class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0/supabase_2.99.0_darwin_arm64.tar.gz"
      sha256 "33d791e07b879358d393952c516394e4980e7bee08e55196d53f83aaecaa2adf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0/supabase_2.99.0_darwin_amd64.tar.gz"
      sha256 "7809ef30ad1d7c2c43a5f0b330e93025634d53ab52752f8411527377e704b4f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0/supabase_2.99.0_linux_arm64.tar.gz"
      sha256 "bb8eb6d5e4a9d47fa8ff5a125b00c24073ea8dbbdfc76628976900ca3830b488"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0/supabase_2.99.0_linux_amd64.tar.gz"
      sha256 "c6e491e57776d3c8214dbc026eb08e24133f68ab09014d33bb6819daa771aa0c"
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
