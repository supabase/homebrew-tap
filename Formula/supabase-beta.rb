class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.34"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.34/supabase_2.108.0-beta.34_darwin_arm64.tar.gz"
      sha256 "cde36aebae8c2dad31c50b2a1e83ad20c04037010c8950ec96c9d6239d941ceb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.34/supabase_2.108.0-beta.34_darwin_amd64.tar.gz"
      sha256 "a09cad52e4db502e68bf2ba6c3a6b8d0c552bd74d7f38cf1345bb4a109d62913"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.34/supabase_2.108.0-beta.34_linux_arm64.tar.gz"
      sha256 "6060b6697fe5e353998e8880325a3cabc2dc29eb213e2ae6ff159587ad082f73"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.34/supabase_2.108.0-beta.34_linux_amd64.tar.gz"
      sha256 "9d4b1d9703e76beb93a2210b468d80b328771065833308639fb7a6602ab6f007"
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
