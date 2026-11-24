class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0/supabase_3.4.0_darwin_arm64.tar.gz"
      sha256 "630cf3f52821c33ed6023e7f395e1deaf5cc07c0a88b7e1aaf25966c1fca996d"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0/supabase_3.4.0_darwin_amd64.tar.gz"
      sha256 "1b15b8d81593b164bd5eedb97a8e6001c32c7a90c09ff5b45a24402bc71ed367"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.4.0/supabase_3.4.0_linux_arm64.tar.gz"
      sha256 "35f211ede3b4b6ae479cb6aaf6f323dbf56f7268dab503cf4f549b2973580402"
    else
      url "https://github.com/supabase/cli/releases/download/v3.4.0/supabase_3.4.0_linux_amd64.tar.gz"
      sha256 "d82f8fc8a1611c45b9422b10378f61df614325f7e25624acda3704544513d6ac"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
