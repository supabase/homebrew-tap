class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.1/supabase_2.111.1-beta.1_darwin_arm64.tar.gz"
      sha256 "62bfe3db3e148721f1106341424f29bca58d0e64d0423926d28d2b2e0b00220e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.1/supabase_2.111.1-beta.1_darwin_amd64.tar.gz"
      sha256 "2073996c13f2adf89c907b9e0692447828bcf5390b28a6c521032fb9bfed774d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.1/supabase_2.111.1-beta.1_linux_arm64.tar.gz"
      sha256 "586998d9cd61774b08ba2d40f6da9d8fbb3c3ee2d9a3b7270e8c0510637c4007"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.1/supabase_2.111.1-beta.1_linux_amd64.tar.gz"
      sha256 "5f3e88768b5d5f85adcffabb34f48627e1601eeb5f0de535d532dc3dd9fd77ad"
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
