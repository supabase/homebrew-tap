class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.4/supabase_2.104.0-beta.4_darwin_arm64.tar.gz"
      sha256 "11c42fd26f53a641377d86b9c851268ece85b63d14e07eacaf4309d4ea0ba4da"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.4/supabase_2.104.0-beta.4_darwin_amd64.tar.gz"
      sha256 "c9f3990a1d4658a295c7147cdc4f7830f39567b71c2f2ce0f8d2126650c3abb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.4/supabase_2.104.0-beta.4_linux_arm64.tar.gz"
      sha256 "db2ffe49738536d91e51d0d7666af4bf3bc79c849432bac3ccfa23363f941cf0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.4/supabase_2.104.0-beta.4_linux_amd64.tar.gz"
      sha256 "4fa5b4b47b7e893ccf6bf66146cc5b5abb3dfae1ff495332c5043eaba9e3473d"
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
