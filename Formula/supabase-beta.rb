class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.3/supabase_2.111.1-beta.3_darwin_arm64.tar.gz"
      sha256 "ea4de0b1ecac895d4cab9c0e0c4d09f8f0c5ea0c67d325777da0ca63c71cf772"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.3/supabase_2.111.1-beta.3_darwin_amd64.tar.gz"
      sha256 "6c8789ce8ee76d9222edd39229e0049bfc20beed5fa3f05bfc2f142c3db529db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.3/supabase_2.111.1-beta.3_linux_arm64.tar.gz"
      sha256 "701b3b069ba29f7bc019a059b15d2876bf9e8bf0c97ab8cb717bfcdc182d2d37"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.3/supabase_2.111.1-beta.3_linux_amd64.tar.gz"
      sha256 "b868a61429f7382e2b2c99ada6b142feb215be7b7ecc6054841c309bf39659e7"
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
