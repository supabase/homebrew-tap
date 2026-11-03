class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.10/supabase_3.1.0-beta.10_darwin_arm64.tar.gz"
      sha256 "1bb246906a7f11ade5f68bb041e5a9041352951ce84c96a325ecd7c55fd24e78"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.10/supabase_3.1.0-beta.10_darwin_amd64.tar.gz"
      sha256 "c59724d6c9c6828ed6789ec4ffc4782d7208b87388cc73b161a0736ae1c13156"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.10/supabase_3.1.0-beta.10_linux_arm64.tar.gz"
      sha256 "d8b17dd420ae9f3bb5f6fe33c423eb114c0650addb12c119519231d50d5ef5b5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.10/supabase_3.1.0-beta.10_linux_amd64.tar.gz"
      sha256 "3208e4357e063066d375ed45a888302693f2c6f7d2e640c2c2109a4fb77deb6d"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
