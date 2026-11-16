class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.21/supabase_3.2.0-beta.21_darwin_arm64.tar.gz"
      sha256 "de9d6ff0106d30a7a2c8c872e1003ea629887936ff1cd0141059674955b90c68"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.21/supabase_3.2.0-beta.21_darwin_amd64.tar.gz"
      sha256 "af3b120c9bcd40611081544a8c2ccb77986c0388e34fd8eb1825f5bc5cac6ac1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.21/supabase_3.2.0-beta.21_linux_arm64.tar.gz"
      sha256 "ae00ff2c5069d68753165be084ed69c961000c7229f3b9d479e408c5ff3dce35"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.21/supabase_3.2.0-beta.21_linux_amd64.tar.gz"
      sha256 "bc889866c68e5aa0779347a56833ae12118db949b9edfe9ee052a065aed5433c"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
