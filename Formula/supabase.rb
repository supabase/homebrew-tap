class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1/supabase_2.100.1_darwin_arm64.tar.gz"
      sha256 "e06eda5369e1a20acd5e06e392f6dc4e47646d3792c142a2dc1661613b4a2ab4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1/supabase_2.100.1_darwin_amd64.tar.gz"
      sha256 "f9039282b24ac99b1a18d3ad31f4caac92601297e25f9b5b98c3e36e579a64ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1/supabase_2.100.1_linux_arm64.tar.gz"
      sha256 "b8c6f9d45f9b146e330030e9fe02995f081d722db32fb23947446eb076c5b3fe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1/supabase_2.100.1_linux_amd64.tar.gz"
      sha256 "7f60353debc38028f7fc82e80d4636c1e4ce937c43cab5e70301bbfb7d49e9da"
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
