class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.9/supabase_2.114.0-beta.9_darwin_arm64.tar.gz"
      sha256 "f32e4e6db6fe8ec2e68d46a8b08cf030a7ef6798a033042e47088ffab9e8e9b6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.9/supabase_2.114.0-beta.9_darwin_amd64.tar.gz"
      sha256 "f4c3e703ce857bc24661230cb0086d9d6fcb321b88ff7ad8820c94d4a86da1b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.9/supabase_2.114.0-beta.9_linux_arm64.tar.gz"
      sha256 "fd34eb962cdee79937089ce7fa88aba7275dc685d5dc44bab718c81a52623886"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.9/supabase_2.114.0-beta.9_linux_amd64.tar.gz"
      sha256 "04191318d26d0186f013ae0b6d37c59da0a2daa29087327a1911de647ea99e8c"
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
