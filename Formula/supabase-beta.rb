class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.4.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.1-beta.1/supabase_3.4.1-beta.1_darwin_arm64.tar.gz"
      sha256 "e657c68f1b2221718788fe8f72fa8dca17860c49850250d744bda0fd9f0864f3"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.1-beta.1/supabase_3.4.1-beta.1_darwin_amd64.tar.gz"
      sha256 "4ac4bdebea55363d6df2b7bc7b49d10369b9d686d328475f8fe49de2e070a3df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.1-beta.1/supabase_3.4.1-beta.1_linux_arm64.tar.gz"
      sha256 "bae4771d91c217014e5b17cc51b797e1bf87c8954d4b2684ae22a721394020b1"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.1-beta.1/supabase_3.4.1-beta.1_linux_amd64.tar.gz"
      sha256 "8afd0c9f652103deae95c585950fadef76111992d0abdb076d9c0168f9130ead"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
