class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.8/supabase_3.3.0-beta.8_darwin_arm64.tar.gz"
      sha256 "cea531701c11fd429f234eca9f5e651a39cf7cdba24ab1036714bc67b52c9274"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.8/supabase_3.3.0-beta.8_darwin_amd64.tar.gz"
      sha256 "268653e6e75a7889ee89f282a025380bff8f0babdc96619aa9ba2e1ea4eda075"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.8/supabase_3.3.0-beta.8_linux_arm64.tar.gz"
      sha256 "f888b94086c583e23cbe9d99c7a592cabfbd7973fa0496947548d6a3e82ccb81"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.8/supabase_3.3.0-beta.8_linux_amd64.tar.gz"
      sha256 "cb3b0a93f2470a64c83d8de90a21dcd873a37afacb970b08db60087424c4333e"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
