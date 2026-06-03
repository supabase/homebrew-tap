class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.4/supabase_2.105.0-beta.4_darwin_arm64.tar.gz"
      sha256 "bfb54c84e10f46bfb6b7c1afa5d40a15648df531b54cea9f042d7399ada44862"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.4/supabase_2.105.0-beta.4_darwin_amd64.tar.gz"
      sha256 "41090314faeda0d1a17209ad903c317c6cb0763b5c21291e3eb24194a84a277d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.4/supabase_2.105.0-beta.4_linux_arm64.tar.gz"
      sha256 "921ee07942da5401f1514a5ade57e6c25e45b95f311853150a091c28a9f829c4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.4/supabase_2.105.0-beta.4_linux_amd64.tar.gz"
      sha256 "cb406d1fa5d98ea1bdc4f5198264dd06c50e6a6d34a45b8ada7b6b8181c99abd"
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
