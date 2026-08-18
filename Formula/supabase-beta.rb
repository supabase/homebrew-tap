class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.20/supabase_2.115.0-beta.20_darwin_arm64.tar.gz"
      sha256 "95c9947ce8cc888ee872600126f65235e0c31a126d822ce8a8126b7e4ead6894"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.20/supabase_2.115.0-beta.20_darwin_amd64.tar.gz"
      sha256 "d27c593f26d0897188efeb738cb7d5a0fd9a84a597d9c04e9b3e921e90246e27"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.20/supabase_2.115.0-beta.20_linux_arm64.tar.gz"
      sha256 "62887ef2c26a641bd1f8788b3ab2d4f94594ca5335704fa13cfde79fef8dc9e7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.20/supabase_2.115.0-beta.20_linux_amd64.tar.gz"
      sha256 "a8eb58f5c0a9dbe0ae29e5efdec1dbc07666ae33319f7ab626ebc35b87d16158"
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
