class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.2/supabase_2.102.0-beta.2_darwin_arm64.tar.gz"
      sha256 "d0c667bc901d6862fc12aec1a0f078a25aea9d118c0d41bdd8a79d3fde889854"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.2/supabase_2.102.0-beta.2_darwin_amd64.tar.gz"
      sha256 "d8d51a0ab6272076a130a552dde21bcce0a025fb82f02ecc1184d378e87a53c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.2/supabase_2.102.0-beta.2_linux_arm64.tar.gz"
      sha256 "3ebe99bfaa0738be9664984b2e46025c734880225c76b8d814f1c64a8e27509f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.2/supabase_2.102.0-beta.2_linux_amd64.tar.gz"
      sha256 "c008a623d7e41cba0c9f11daeaddddf7b43cdb34d064a2007a7300551d0580e7"
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
