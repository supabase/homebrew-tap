class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.2/supabase_2.99.1-beta.2_darwin_arm64.tar.gz"
      sha256 "87d833bb440920258d0ea240489382d0a50285684b8623902349113d37833616"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.2/supabase_2.99.1-beta.2_darwin_amd64.tar.gz"
      sha256 "a2b2342b6690202559202c3ad19c9a5a0cbdf991f9f78524ee95dbd8af2345f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.2/supabase_2.99.1-beta.2_linux_arm64.tar.gz"
      sha256 "885b61cf6a656606d250b1754f586e39bf8299f6ffed1d7bf5d4eab8a87cbfad"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.2/supabase_2.99.1-beta.2_linux_amd64.tar.gz"
      sha256 "fb7afbf6c2b2cb053569ae43c836e8ee086736a24e16178fa163dc4a80bbd1b1"
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
