class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0/supabase_2.118.0_darwin_arm64.tar.gz"
      sha256 "201a4613c60700c0d6fed07528344c27ad6556cd9c50d2c313c1672094f37477"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0/supabase_2.118.0_darwin_amd64.tar.gz"
      sha256 "81ab3e67d85f6e4fa71deb18860ef252a6826eef9dad9d494259735d61a55adc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0/supabase_2.118.0_linux_arm64.tar.gz"
      sha256 "0cd35fea97c2c93dce8a2cd661311be88c107233946cbe3692566196238859c5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0/supabase_2.118.0_linux_amd64.tar.gz"
      sha256 "f6089a86fb9d9221c958193a277338daddd6822f706929943812fa32e106c86d"
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
