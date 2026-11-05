class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.18/supabase_3.1.0-beta.18_darwin_arm64.tar.gz"
      sha256 "16bf0fcbb06ba491eb8bd216fe2e7b58d88f2d459c4727d59882ac54a0669f3c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.18/supabase_3.1.0-beta.18_darwin_amd64.tar.gz"
      sha256 "8219f496043aab1d5aac0faeedd604e9c97a4b2b633447c4a3a72e77d840f72f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.18/supabase_3.1.0-beta.18_linux_arm64.tar.gz"
      sha256 "6366964e3b7ee0efd897b488da4dfbaf3a483cd53992c7401df707b4803f2b16"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.18/supabase_3.1.0-beta.18_linux_amd64.tar.gz"
      sha256 "6a14059fe519c096b0d99c7be38dba05330b20d384ac90c2c7242502183d6254"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
