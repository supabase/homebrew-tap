class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.2/supabase_2.109.1-beta.2_darwin_arm64.tar.gz"
      sha256 "02aeb2b89634cbe8dc05d77608fe81eb50b5a2c5cef55cfd7835248469380b73"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.2/supabase_2.109.1-beta.2_darwin_amd64.tar.gz"
      sha256 "38b9a43879d5fc1306f489449b37b432a84a8ce4175a54d4bb5bb6d7de351ce9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.2/supabase_2.109.1-beta.2_linux_arm64.tar.gz"
      sha256 "b678f3ba20081fc3a722a00ac4f2a5e2b90446e26fc82d8122ebd5d8985ef60d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.2/supabase_2.109.1-beta.2_linux_amd64.tar.gz"
      sha256 "304443bc3d93ece8bcbc7b720d9a08f58750f552f20d76ea014b1a183c0a88cf"
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
