class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0/supabase_2.116.0_darwin_arm64.tar.gz"
      sha256 "8b750455d7b02c989cec0c6c26599d28b0aefcbeedf20a315bb1d5215a185a83"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0/supabase_2.116.0_darwin_amd64.tar.gz"
      sha256 "1e1dce66222fba539211624617960887e445fd7f27830d6f54bdb4eaf1d7c498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0/supabase_2.116.0_linux_arm64.tar.gz"
      sha256 "015a45756bb8459716a4b44b020605adc11956cd7d0bd5824aec2ed1c8287933"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0/supabase_2.116.0_linux_amd64.tar.gz"
      sha256 "5b3031cb297d51b25be4c284e4c852254460ec722ec221d3b81b07d55acfd158"
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
