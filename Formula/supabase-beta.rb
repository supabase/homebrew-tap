class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.10/supabase_2.103.0-beta.10_darwin_arm64.tar.gz"
      sha256 "f3dbd229dfecc6ee95eb64482bdb5b6137b82210a15a4419e71f4660cd7b2706"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.10/supabase_2.103.0-beta.10_darwin_amd64.tar.gz"
      sha256 "cd1a3048d26455e6ebf8c0e235185436a7b35ac3d6d3ecd8bfbc9c73480128fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.10/supabase_2.103.0-beta.10_linux_arm64.tar.gz"
      sha256 "0cedb9105201177af6e0f257d02330f28fc53f5f77fd39178ae8ba4f19d7f700"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.10/supabase_2.103.0-beta.10_linux_amd64.tar.gz"
      sha256 "c2bddf2387a244aad02c1adc8f53a8034691b2fcb5b11f722e81afcafe55890b"
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
