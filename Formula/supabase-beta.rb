class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.6/supabase_3.3.0-beta.6_darwin_arm64.tar.gz"
      sha256 "34386cf65f740abe8f1dfaef1e851ee55fdfef2aba5c57d8e54423b9815e49f7"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.6/supabase_3.3.0-beta.6_darwin_amd64.tar.gz"
      sha256 "f88bfe78c98ef53d4c365ce2dc1a8244a54cae24df258525fceed725c6b7de2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.6/supabase_3.3.0-beta.6_linux_arm64.tar.gz"
      sha256 "a98a566c0b0ec0a9e536dda24cf2383d9bb89970a104eaa3ba712cc3fb66f964"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.6/supabase_3.3.0-beta.6_linux_amd64.tar.gz"
      sha256 "661082c3ec488f2f302642a5e77706c9a141b494657508fbbf159312ef5dc4d0"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
