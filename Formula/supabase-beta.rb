class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.3/supabase_2.103.0-beta.3_darwin_arm64.tar.gz"
      sha256 "186b7504ef9ab4666399595c4c0427932c8b2937f499454fa4b1815fa6cb79b4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.3/supabase_2.103.0-beta.3_darwin_amd64.tar.gz"
      sha256 "3fc128bdd10a598b991e72b5441d775433959af71fef2d63d85dcf61204f7fe1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.3/supabase_2.103.0-beta.3_linux_arm64.tar.gz"
      sha256 "6ce2ada11ac77d01c4eb1522e0b39014e6c8317e91d0c96f548c29e31eeda2e5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.3/supabase_2.103.0-beta.3_linux_amd64.tar.gz"
      sha256 "eb9d2a6df0872a94ed9153ee0f56235a3401186b2c7421f898b8041ec7597d49"
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
