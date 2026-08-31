class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.9/supabase_2.117.0-beta.9_darwin_arm64.tar.gz"
      sha256 "16bb3de20874214af1f58548d990c198b8c9f64eb1ddfec4c2c95004c926d6bd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.9/supabase_2.117.0-beta.9_darwin_amd64.tar.gz"
      sha256 "35b2752bcdf420b59af1a5b0662057e6c3866156635fb001805fde5c02723f4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.9/supabase_2.117.0-beta.9_linux_arm64.tar.gz"
      sha256 "ac77c5783564fcf2f12288024ec662eca0bad1db7b9e758782e584c63eb8aeda"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.9/supabase_2.117.0-beta.9_linux_amd64.tar.gz"
      sha256 "2383b4bd8d9e3b7fe08085e5f2040d1f4f8717b449a76918f1881f35a3641518"
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
