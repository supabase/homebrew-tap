class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.1/supabase_3.0.0-beta.1_darwin_arm64.tar.gz"
      sha256 "922e1ff3a6da60ee06b9e06367fa39e17200aa2d4004b4ba86d2f7eb03734753"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.1/supabase_3.0.0-beta.1_darwin_amd64.tar.gz"
      sha256 "2b6bac180ec4cd5469da727161cac1ed9558defcdebf0b276f682f278a874a94"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.1/supabase_3.0.0-beta.1_linux_arm64.tar.gz"
      sha256 "f7820e0006ecc81d766213b176fea216de740b5c98bfe6b3c1779f526e61cf1b"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.1/supabase_3.0.0-beta.1_linux_amd64.tar.gz"
      sha256 "1425761d1c8ed06a23428e66f8577976e5b266b8bf9a6718a55c9f99cbcfaef2"
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
