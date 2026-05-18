class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.2/supabase_2.100.1-beta.2_darwin_arm64.tar.gz"
      sha256 "c56eb9980efbbb29fa82865f00ce52a13279381ba4e767d498b667b3608a8512"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.2/supabase_2.100.1-beta.2_darwin_amd64.tar.gz"
      sha256 "6595db28e4b7225b934e1b85bc2f1c3b485d70e483a646107443d902677d1b9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.2/supabase_2.100.1-beta.2_linux_arm64.tar.gz"
      sha256 "10e9b47643c2ce82ed62e3cee96c961b8d44cd8e3f13219982c8ad5e04821d05"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.2/supabase_2.100.1-beta.2_linux_amd64.tar.gz"
      sha256 "e9c1a2dae1000d15acf40ebe53bc4b6ecc369f871856347aeb31a7be9f4a58a8"
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
