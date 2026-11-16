class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.23/supabase_3.2.0-beta.23_darwin_arm64.tar.gz"
      sha256 "6ee33d680e55497047cb18fa743ec8a69d1c0f6952cad3eb52653d3fa388d3b9"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.23/supabase_3.2.0-beta.23_darwin_amd64.tar.gz"
      sha256 "9e7b5930db0da25319724c4eb97026b526d5900bda42c7b32f94f5acf091fb63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.23/supabase_3.2.0-beta.23_linux_arm64.tar.gz"
      sha256 "6c7e22537baa80f8bc7d2ab34d50d053a323d33e125cdd9cbfe10b48a72e1aac"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.23/supabase_3.2.0-beta.23_linux_amd64.tar.gz"
      sha256 "fee67c658a0112b10c209b2a4f880ac94c1772ee4691b6f7e3a339cc6079a0fe"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
