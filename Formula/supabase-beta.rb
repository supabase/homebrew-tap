class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.9/supabase_2.109.0-beta.9_darwin_arm64.tar.gz"
      sha256 "8ee44b3b8e2d4b9b0316a95a9ebec25f25b2d778fd8fd346810550420aa02f36"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.9/supabase_2.109.0-beta.9_darwin_amd64.tar.gz"
      sha256 "82274953e7323c41aa8f1d01cc11b787166068684c139f99cc0c41d0e6f360ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.9/supabase_2.109.0-beta.9_linux_arm64.tar.gz"
      sha256 "4fa9f3bd6a2d49df45d79317dc8581c9269db4ac1386c8287299a05779e75cab"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.9/supabase_2.109.0-beta.9_linux_amd64.tar.gz"
      sha256 "aac1316e3ce0c7ed796c689b7152c16ec3b88c4a83286393e94321339fbcd291"
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
