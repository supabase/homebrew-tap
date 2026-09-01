class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.2/supabase_3.0.0-beta.2_darwin_arm64.tar.gz"
      sha256 "1f0998f1149a534a6cec3e40edc26d273e433d75ded186368034e15c37319f35"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.2/supabase_3.0.0-beta.2_darwin_amd64.tar.gz"
      sha256 "66f178e9d8575d07f79f2253c38c1c72ca1a690328836452c5604061fa69c1b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.2/supabase_3.0.0-beta.2_linux_arm64.tar.gz"
      sha256 "6e3bbd3368d7c7b4f372c90986cc2c4488a918c67e89c5e450b8b7300d273754"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.2/supabase_3.0.0-beta.2_linux_amd64.tar.gz"
      sha256 "35bc70f5cc854fddd19c1655a4ec05297249ea877f5d6d46456a24e641276486"
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
