class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.15/supabase_2.106.0-beta.15_darwin_arm64.tar.gz"
      sha256 "bcbf1dea152c607e9aef46667242f08e553fbecd798818030bdcdd0a88d80b74"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.15/supabase_2.106.0-beta.15_darwin_amd64.tar.gz"
      sha256 "0db5c4fb07870fd8299d646f971b63f63f51fe3193432d4631531b2190b9af05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.15/supabase_2.106.0-beta.15_linux_arm64.tar.gz"
      sha256 "a93c1f121d50b13a4c376c63f2a857219cabc5e7f585f82575051abdb4721d8c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.15/supabase_2.106.0-beta.15_linux_amd64.tar.gz"
      sha256 "d0921b4955578d47fff80a75b4f6b5e31c0ea05fcddb20e2c976bda816b66d5f"
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
