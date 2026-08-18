class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.25/supabase_2.115.0-beta.25_darwin_arm64.tar.gz"
      sha256 "7e3168f8147918d01d7db3168d0e24882eb30d079549671a101f40d87d1a6de3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.25/supabase_2.115.0-beta.25_darwin_amd64.tar.gz"
      sha256 "bf6089b3342ff894ab1c3fbde27b567eabf29a5c1f18c00094c2f5c05903c039"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.25/supabase_2.115.0-beta.25_linux_arm64.tar.gz"
      sha256 "ddf2d5944a7769c9b0da385fe6a9e440119e1ebb3c4c74f36f6a9ffe800b7692"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.25/supabase_2.115.0-beta.25_linux_amd64.tar.gz"
      sha256 "e94a326fea607023820381b3e76b7aeaf72f145d3714caedafa0693b32c3ece9"
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
