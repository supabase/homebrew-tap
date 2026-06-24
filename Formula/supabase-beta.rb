class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.32/supabase_2.108.0-beta.32_darwin_arm64.tar.gz"
      sha256 "cdc6332e15b228ecf5b7265ed36565e4419ec2ec32b36b36d2b25c49b5fa71ee"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.32/supabase_2.108.0-beta.32_darwin_amd64.tar.gz"
      sha256 "c9ec208af20c02359f3a2e113d4ccf4870a542bce220895d5d90d943d62aad61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.32/supabase_2.108.0-beta.32_linux_arm64.tar.gz"
      sha256 "e2fc5a233c02cb242cc0eaceed4c2a38437bf332b54c821169afde9c5873e86c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.32/supabase_2.108.0-beta.32_linux_amd64.tar.gz"
      sha256 "9024e35a6521ab2fe7f7ddc910446e0d8450673b907305138171326b1ea6b1a7"
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
