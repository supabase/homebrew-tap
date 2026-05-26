class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.7/supabase_2.102.0-beta.7_darwin_arm64.tar.gz"
      sha256 "952114639b3580d74971b72ca031b6917fcc728eecaa6f33e4a29a8ded40e4ba"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.7/supabase_2.102.0-beta.7_darwin_amd64.tar.gz"
      sha256 "b86bf30c74cf06aa846c79a51964799c17c3eb5a59f2b62f09dbad2a5b2ba075"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.7/supabase_2.102.0-beta.7_linux_arm64.tar.gz"
      sha256 "d5841ba432f35dfb0afdfa888365ece0ba5370029087fbcd3031e46ff33ad33a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.7/supabase_2.102.0-beta.7_linux_amd64.tar.gz"
      sha256 "7e73dd5a1b0212eb38412644ae3c71f983ba361f0fa243f23a9ab3151813d6ad"
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
