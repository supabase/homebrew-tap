class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.10/supabase_2.118.0-beta.10_darwin_arm64.tar.gz"
      sha256 "d70516a64af28cfb9c6e3d4a3b58a2d229e0359952b87d16b14d8f7a767dc829"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.10/supabase_2.118.0-beta.10_darwin_amd64.tar.gz"
      sha256 "7adba8511b37f2b3795a4b0ad7c12d83a1757be4be2d053353e380edcae4f0a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.10/supabase_2.118.0-beta.10_linux_arm64.tar.gz"
      sha256 "d8c9d4a8dfedc9d2180e725e22be062c598f375a768cc9db3edf0540f8dd616f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.10/supabase_2.118.0-beta.10_linux_amd64.tar.gz"
      sha256 "c0ed8a29e357677bcc88c15046de5c619c1b98e2f4daedcbe8030723c015b58b"
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
