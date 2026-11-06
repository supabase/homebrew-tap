class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.24/supabase_3.1.0-beta.24_darwin_arm64.tar.gz"
      sha256 "164f63db7bfdf4843ede63de75223ac68d457d73cf083f44f1ae74700bb6d200"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.24/supabase_3.1.0-beta.24_darwin_amd64.tar.gz"
      sha256 "79116d95c383e7899567053b63bdb22a2358f163bc19b2aed60469080229e505"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.24/supabase_3.1.0-beta.24_linux_arm64.tar.gz"
      sha256 "28fc298be8c2e54131b87d903bf7f076fcbdf7782fb8d9ed280e3dc03bb1c522"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.24/supabase_3.1.0-beta.24_linux_amd64.tar.gz"
      sha256 "ad320cbc01bf3642fcfe1c9730384be41404eaa992759742a5cffcd405c4bd45"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
