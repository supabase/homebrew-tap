class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.3/supabase_2.112.0-beta.3_darwin_arm64.tar.gz"
      sha256 "e0e406b5b444a17e266432c049d1f58ed50ca40c74bad0cd2aebda1fafb401c2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.3/supabase_2.112.0-beta.3_darwin_amd64.tar.gz"
      sha256 "884ca36ebdc95dbb3343069e179d60f33828cf126d988beb84956bab1281bf48"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.3/supabase_2.112.0-beta.3_linux_arm64.tar.gz"
      sha256 "d72acd52471871fc2e21bc56bd6d904961d0b008bb67330aadef3d9a9801dcf7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.3/supabase_2.112.0-beta.3_linux_amd64.tar.gz"
      sha256 "8a0f0bab18af23459fd710dc7ecc120b73457c296d832b720d10c1aee365115e"
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
