class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0/supabase_2.115.0_darwin_arm64.tar.gz"
      sha256 "5b25574efd0a67905073085783da3659737d237e5137e3adfe1a9858e94f40dc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0/supabase_2.115.0_darwin_amd64.tar.gz"
      sha256 "0ef10f633c72ea14be92ccd2905af1a92472dfc1e7518e04e887bfca0b45b851"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0/supabase_2.115.0_linux_arm64.tar.gz"
      sha256 "02d2dfddf41fb6d03d2f1baf6e0c63b32ecc8c4dfddcbe63f9b11aecd2a9111c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0/supabase_2.115.0_linux_amd64.tar.gz"
      sha256 "ff099608ce758b625532ef03a61f4c9520b995e94ff6cd5480dc0428cad64cb3"
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
