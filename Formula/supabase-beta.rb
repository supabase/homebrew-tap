class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.113.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.3/supabase_2.113.0-beta.3_darwin_arm64.tar.gz"
      sha256 "60781d60915391320f0083be4dd3c9d9e6d71a7432ff98d56c35c4b92c77ca00"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.3/supabase_2.113.0-beta.3_darwin_amd64.tar.gz"
      sha256 "1d08eb62de4262b37da2a42f99017b49d02977b25e2f61ba008270f82f1a0a07"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.3/supabase_2.113.0-beta.3_linux_arm64.tar.gz"
      sha256 "8a203e2945c43e8ab3340398b30d2112bb5573c2e987044ba2af7671086e8942"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.3/supabase_2.113.0-beta.3_linux_amd64.tar.gz"
      sha256 "0a3e32d730bc226cf0aea90da2e2bf1713a46f04f7a9787aae362a01cb81f26c"
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
