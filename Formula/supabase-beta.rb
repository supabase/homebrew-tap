class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.3/supabase_2.109.0-beta.3_darwin_arm64.tar.gz"
      sha256 "cdf869722f75dc178eb4150e5a779a826c2e3f9b2b73a1c86d3060da07035291"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.3/supabase_2.109.0-beta.3_darwin_amd64.tar.gz"
      sha256 "0c882bdef6adc180be5d7bc5008cb874bb628e29b991ffc4d0b8e4a24eade614"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.3/supabase_2.109.0-beta.3_linux_arm64.tar.gz"
      sha256 "cd798f596d6a32ef9ede84e2df2aa59cfac39420dc8a5072911aecc49fae43fb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.3/supabase_2.109.0-beta.3_linux_amd64.tar.gz"
      sha256 "9c816eac62a5cd44a01fb5a247d12d8266be67fcdac75580ae23f8ad0747be5a"
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
