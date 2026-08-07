class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0/supabase_2.112.0_darwin_arm64.tar.gz"
      sha256 "a51fe3d5be83b9d79767a41b5c9b74e03a5dc2a1df760d7fdfa52ba2c9ccced3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0/supabase_2.112.0_darwin_amd64.tar.gz"
      sha256 "5dde404fca7446b376afdaccb46af41ee7c378fb4428e36ab77a9066fa133f9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0/supabase_2.112.0_linux_arm64.tar.gz"
      sha256 "851fd16ae0367d98e4d6aad7905e242cd0dd8d559683283dadf75c98c6e0de69"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0/supabase_2.112.0_linux_amd64.tar.gz"
      sha256 "608097d8300e85be301531e85ea37d5c535975b5059ffe4559f730e008278514"
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
