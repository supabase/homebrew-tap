class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.10/supabase_2.106.0-beta.10_darwin_arm64.tar.gz"
      sha256 "e82df8f401d166b27a50fb1b1a492e63e649c8ee2d50fd514dfe82934776c871"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.10/supabase_2.106.0-beta.10_darwin_amd64.tar.gz"
      sha256 "d4a29f5d3b4de436cf758c93b5a0b4433503fd312ef1395e835e1bcb0d63431f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.10/supabase_2.106.0-beta.10_linux_arm64.tar.gz"
      sha256 "e6e4df29c5c5fe70ffe214f85f68ee85f01f1ebcd76ce4dbd891db8a41b880d4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.10/supabase_2.106.0-beta.10_linux_amd64.tar.gz"
      sha256 "83b37a64250007498d1bc2c0e9cb48706598558fcf7b5faf8f5fb5d5845a7175"
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
