class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.27/supabase_3.1.0-beta.27_darwin_arm64.tar.gz"
      sha256 "ddcc7255d36bd019ebdef6b57e1253ca1a26c30d480fd8b7ae1327bf307122cc"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.27/supabase_3.1.0-beta.27_darwin_amd64.tar.gz"
      sha256 "d923aa0d6d3000b88a84497b78c553a35185d865f9682475b8b5b5060ee6ac65"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.27/supabase_3.1.0-beta.27_linux_arm64.tar.gz"
      sha256 "04f83cf26fc99b95e4ddfb86bae9bd95fc36103eb44ca50d24523bbde1f4cfee"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.27/supabase_3.1.0-beta.27_linux_amd64.tar.gz"
      sha256 "184687380c9a33d4d3300ad55f0a4035ca00eca1b6a4cb5425921a2f80b0ddb8"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
