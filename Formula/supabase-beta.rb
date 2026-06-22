class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.16/supabase_2.108.0-beta.16_darwin_arm64.tar.gz"
      sha256 "fe998dd5161bdc3464d91985dcaef781c763014fb991ffffd5a2bffdc8801458"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.16/supabase_2.108.0-beta.16_darwin_amd64.tar.gz"
      sha256 "6fc3f00e0a0591371cb0ade0e55760851b926280dbade4a908953ce223a3e935"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.16/supabase_2.108.0-beta.16_linux_arm64.tar.gz"
      sha256 "2b517ad87ee3546de59e5b7744b524e682ef8b165f230ae1453bc933726ce397"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.16/supabase_2.108.0-beta.16_linux_amd64.tar.gz"
      sha256 "dab9a339823b1606d5886b19f4cca3741b646ccbfb11c40773c9687b13d67409"
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
