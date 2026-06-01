class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.3/supabase_2.104.0-beta.3_darwin_arm64.tar.gz"
      sha256 "24967d570ce4db60b0b7636a986374bee08b23f84b5cc26ec5507b3cae6efabe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.3/supabase_2.104.0-beta.3_darwin_amd64.tar.gz"
      sha256 "5dc85fc88c7148d8f11e601a578cd8bc2be796296becf076c8c8b2fe4a6c9c10"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.3/supabase_2.104.0-beta.3_linux_arm64.tar.gz"
      sha256 "4829a6334e160e1b12603f2523255ce2122d55588ab2988267b5666a6b149dbb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.0-beta.3/supabase_2.104.0-beta.3_linux_amd64.tar.gz"
      sha256 "bbe8f394121954496add1808f825478e3004601aa19ea12d04f3bf1b0ad3a1d8"
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
