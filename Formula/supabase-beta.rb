class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.6/supabase_2.117.0-beta.6_darwin_arm64.tar.gz"
      sha256 "abbfede64d0780dd16eac75e5cd6deec1cbee5b57942e7f09ccf53c5de4d5e38"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.6/supabase_2.117.0-beta.6_darwin_amd64.tar.gz"
      sha256 "d973946bfb873f73554e40e5566076838d04de5c97832d4d287eac484206f659"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.6/supabase_2.117.0-beta.6_linux_arm64.tar.gz"
      sha256 "cd5bae793c410b5a47da2b390d420059abd54abd985072153f64df0a9fb072b1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.6/supabase_2.117.0-beta.6_linux_amd64.tar.gz"
      sha256 "67bc2a5b49573dc23d35857bd16e90db5de824aa5fe2a5e47e35fc4a4d03b036"
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
