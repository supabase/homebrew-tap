class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.7/supabase_2.99.0-beta.7_darwin_arm64.tar.gz"
      sha256 "b65de551c57c4dec26c24d689a8445a03e241e253c041d3cb44f805feacd0534"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.7/supabase_2.99.0-beta.7_darwin_amd64.tar.gz"
      sha256 "c9ce036596b35badb46f0b006a8b20343ec9cfd11977c0351668883306b01a9a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.7/supabase_2.99.0-beta.7_linux_arm64.tar.gz"
      sha256 "b822cc25f1047c27c50b79681d9f686419938c94471e8ec241c5b764ca300caa"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.7/supabase_2.99.0-beta.7_linux_amd64.tar.gz"
      sha256 "a11254b31f21672195e6cf6eccaa1192ccbcc85969088b7e98ac6eb8a25ebf59"
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
