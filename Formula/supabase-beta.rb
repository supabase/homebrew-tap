class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.3/supabase_2.105.0-beta.3_darwin_arm64.tar.gz"
      sha256 "8cdf464290497d1471afff41e0bb8daaa314d83ce2dd377265f20366e353ba9f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.3/supabase_2.105.0-beta.3_darwin_amd64.tar.gz"
      sha256 "b7c8ee5f06b6e09f87de2b3e356dc3a88c751aaa27b1d4004e2e8f9cf496e54d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.3/supabase_2.105.0-beta.3_linux_arm64.tar.gz"
      sha256 "e7bfa29ae7adbb93bb9e6cba0c0755a0ae4f236816fcd9b96dacb7c8c05f9b14"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.3/supabase_2.105.0-beta.3_linux_amd64.tar.gz"
      sha256 "c35f8a430ec675950e1bad2e3103a7518089cff8ad79f8c6bec29a0bb68d4460"
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
