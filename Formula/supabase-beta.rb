class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.4/supabase_2.102.0-beta.4_darwin_arm64.tar.gz"
      sha256 "3f60d6147e8fdc0e0ffc3f185f71e1725f0f2731c470f55bc8aecd5801d9aef3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.4/supabase_2.102.0-beta.4_darwin_amd64.tar.gz"
      sha256 "4977ace14cb7a5eecc7119cb11e0dd7f05acb71f56a31f59a7446b7c1d6c188b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.4/supabase_2.102.0-beta.4_linux_arm64.tar.gz"
      sha256 "d62f55010d6137ef29badd4fffb7562aa3f003be0d141defe1c73aab0f50403a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.4/supabase_2.102.0-beta.4_linux_amd64.tar.gz"
      sha256 "f8727608566c51dc763cd5bf635de48a4ff1cca060c012d1499c3388ebfdb77c"
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
