class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.20/supabase_2.106.0-beta.20_darwin_arm64.tar.gz"
      sha256 "3fdd5ece8e20efa6085c49b8508f40257a82ec8dd1930d70b73e26c221c06c32"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.20/supabase_2.106.0-beta.20_darwin_amd64.tar.gz"
      sha256 "c955fa80b298dbccd32a98e3d1a5f1c1817ca762c75422e4ec9b2b030718b438"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.20/supabase_2.106.0-beta.20_linux_arm64.tar.gz"
      sha256 "2710ed19d8329572e76c6a3fb305904d8cc0962a089fad05677314e2ca4c1315"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.20/supabase_2.106.0-beta.20_linux_amd64.tar.gz"
      sha256 "740c1523a0af8676f3116c64ff75daf930fcd573179bb59fd344d63315168295"
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
