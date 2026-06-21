class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.13/supabase_2.108.0-beta.13_darwin_arm64.tar.gz"
      sha256 "249ff698c5b21133bb848c1e24355c42ec3cafe5de51a625aba151099a8de9dd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.13/supabase_2.108.0-beta.13_darwin_amd64.tar.gz"
      sha256 "1448111ceaafe4f73f35f0ca1c6afaf6917a1a1e175e812134c8131aa68ae774"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.13/supabase_2.108.0-beta.13_linux_arm64.tar.gz"
      sha256 "e972e4ca8f725abcc5e443c66ec480713df113381b566096994304b530d509d1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.13/supabase_2.108.0-beta.13_linux_amd64.tar.gz"
      sha256 "761daeb47171b218c059c65705b56c68f020c700cb0a8a4ac7263fad028b25ad"
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
