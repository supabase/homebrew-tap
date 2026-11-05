class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.20/supabase_3.1.0-beta.20_darwin_arm64.tar.gz"
      sha256 "68046b8c8b4841dceb2da38bdad5ef709a16251215fb7a1f063d3fe160976e30"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.20/supabase_3.1.0-beta.20_darwin_amd64.tar.gz"
      sha256 "597a69c8ccacae78c147274a5489def37dcef28b8d1b5eaaab50fcf291c2a0d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.20/supabase_3.1.0-beta.20_linux_arm64.tar.gz"
      sha256 "074cce29b585947d45fdef1ade941a87acd562a5b3a9ad0fa6c9802439636be7"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.20/supabase_3.1.0-beta.20_linux_amd64.tar.gz"
      sha256 "4ac225c5631827b1a3b3f7526fe00860a5a9467a3475dca51e809678385b37fa"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
