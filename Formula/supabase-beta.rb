class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.12/supabase_2.108.0-beta.12_darwin_arm64.tar.gz"
      sha256 "20837e6f0eeb0a2eb21d30674d4ab744d8d58091c0f4fc57dfbc9549a97a0c43"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.12/supabase_2.108.0-beta.12_darwin_amd64.tar.gz"
      sha256 "05f42f9973ba58347f14e5973a69a087ba4381982ae44d7ab6dd7567e4e2faff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.12/supabase_2.108.0-beta.12_linux_arm64.tar.gz"
      sha256 "563554f6e211f05d590a95deb42c9eeb9c6e8e731cdf254e64effde3199c7bc5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.12/supabase_2.108.0-beta.12_linux_amd64.tar.gz"
      sha256 "ec7cddffc1fd459a4ff5011fdca095a52b74217c825da773578552a1c38cdfee"
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
