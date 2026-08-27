class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.5/supabase_2.117.0-beta.5_darwin_arm64.tar.gz"
      sha256 "e88e33cb3f5d0a098bbf3512719d74a038208b3206750d725b81fc6b1b8268fc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.5/supabase_2.117.0-beta.5_darwin_amd64.tar.gz"
      sha256 "5e254d5fe7b0cad3a64f2c5f7bfed75e4034fab8bcb839b1d9896dbba21eec02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.5/supabase_2.117.0-beta.5_linux_arm64.tar.gz"
      sha256 "1e1a8fbdb392a3e798c1946f019a7ba6a64e4df73ea90b856540e65240764861"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.5/supabase_2.117.0-beta.5_linux_amd64.tar.gz"
      sha256 "f96a4bdd40a268f19d4323d4d2b8cae11858e1c57f73f73cde5bcee4af7e8854"
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
