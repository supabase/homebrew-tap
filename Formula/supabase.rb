class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0/supabase_2.102.0_darwin_arm64.tar.gz"
      sha256 "567f0ce9f050ceb46ad4389ab13035e31b5b7205fcb093530f528bb208d2ce28"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0/supabase_2.102.0_darwin_amd64.tar.gz"
      sha256 "41310eb15c13775a76d5900a1d41deaefea477414541f8df7c97ab60f37b7332"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0/supabase_2.102.0_linux_arm64.tar.gz"
      sha256 "9352315ddeeff701a348909a767dee3e19e798a551906482c7ac27012a403607"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0/supabase_2.102.0_linux_amd64.tar.gz"
      sha256 "9c0421ba8089ff2ade90654a05441ac04de4a430f852591323319542ec101872"
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
