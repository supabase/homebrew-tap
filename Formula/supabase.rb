class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0/supabase_2.104.0_darwin_arm64.tar.gz"
      sha256 "56730e9867651816965ce49927c8abd1236b629fa7e110c8c00a09e6b7cb05f6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0/supabase_2.104.0_darwin_amd64.tar.gz"
      sha256 "bf70260aff2359222729c18a07b5bbd2d801aebf7989cd08055d4d361c9cb876"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0/supabase_2.104.0_linux_arm64.tar.gz"
      sha256 "29b2ad78e5da29c0f8ad424a720dbda568e9d7458f3810696710b23ca42cba4f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0/supabase_2.104.0_linux_amd64.tar.gz"
      sha256 "5a0d3ed4c44f8dd1520a9f7ed6309aa60ef3bfc6c5483c9b11f70191f9d74cf6"
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
