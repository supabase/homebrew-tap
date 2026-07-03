class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.11/supabase_2.109.1-beta.11_darwin_arm64.tar.gz"
      sha256 "8bbe278b66ae1ab4d53ccb85016f68ba15669a4caf1820c6dccea3ce78798577"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.11/supabase_2.109.1-beta.11_darwin_amd64.tar.gz"
      sha256 "0ff33e97cf2ec02559e8df66153f529000ada36113438bc68d2cab767b655a72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.11/supabase_2.109.1-beta.11_linux_arm64.tar.gz"
      sha256 "65e4102f4667eba0a3e3ad8404be686d7dfdd30a0105a75bcc413a4787911ad3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.11/supabase_2.109.1-beta.11_linux_amd64.tar.gz"
      sha256 "7d659d009b109af52936f4c510b3156fd8ff5fac41fcdf0f1f95a8b0ae1b9c1d"
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
