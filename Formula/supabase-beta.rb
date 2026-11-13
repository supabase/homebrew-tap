class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.16/supabase_3.2.0-beta.16_darwin_arm64.tar.gz"
      sha256 "b65329d9726b5a03e73d5a2a174e6bffac4047a9a58293e6a2aa15c3b4de2f03"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.16/supabase_3.2.0-beta.16_darwin_amd64.tar.gz"
      sha256 "2feb0a803caa2789e9c859fed3eb302d5e2fae6cdafc7163115ff60144bff698"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.16/supabase_3.2.0-beta.16_linux_arm64.tar.gz"
      sha256 "493aeab450fa6f6399774a505cef90140764d49eb93bc87fac831bd419712fef"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.16/supabase_3.2.0-beta.16_linux_amd64.tar.gz"
      sha256 "35a56e09c169a20ad947be385c09db9b0b6085b2c904de3ffafab11716689aed"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
