class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.29/supabase_2.108.0-beta.29_darwin_arm64.tar.gz"
      sha256 "93f79a66ffc91b97bfdf9f6e4b3e2327212691aa7090336c611c2479f7a66593"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.29/supabase_2.108.0-beta.29_darwin_amd64.tar.gz"
      sha256 "1d0c5f59c0b36933c28ed7c103902d0849b59242de040c10c2632611ee463882"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.29/supabase_2.108.0-beta.29_linux_arm64.tar.gz"
      sha256 "61324c0282076e8c57e653392e6f433242f5423a083722c06de539756d78a4e5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.29/supabase_2.108.0-beta.29_linux_amd64.tar.gz"
      sha256 "56f47b18997ee70cf99f49b388b34b3e616069dbdd0c6c5f4e7a979563d1f147"
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
