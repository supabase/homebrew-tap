class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.2/supabase_2.104.0-beta.2_darwin_arm64.tar.gz"
      sha256 "6bee573894408f990be80433e113636a388396c4a9b841669b8a373370ad34cc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.2/supabase_2.104.0-beta.2_darwin_amd64.tar.gz"
      sha256 "2e4a4488cadd2c6dbbc5ec1871859029174328613265df8d51b3788b1990a933"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.2/supabase_2.104.0-beta.2_linux_arm64.tar.gz"
      sha256 "b730f840cae7ca2bb0eea49b35a823ecc8e80966cd24b99bccb472ba676cde8f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.2/supabase_2.104.0-beta.2_linux_amd64.tar.gz"
      sha256 "8aa4ef868ad86dd1aba177d5291e3311bd592c5575be2c2dfa67289a8ea2a07d"
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
