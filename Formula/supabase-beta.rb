class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.6/supabase_3.1.0-beta.6_darwin_arm64.tar.gz"
      sha256 "0d542fd2e4e3adabd9cf82a28c53d7f324462237de4a8545c256b4667f7c44d5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.6/supabase_3.1.0-beta.6_darwin_amd64.tar.gz"
      sha256 "d6b81bc20130eff4430120734e02668a7c1f22d45553c4a17f1f90cbf780bc06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.6/supabase_3.1.0-beta.6_linux_arm64.tar.gz"
      sha256 "e5f0b70b0f11d37de6d39ba181a636c4b081623c151c931abc374cfdf641572a"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.6/supabase_3.1.0-beta.6_linux_amd64.tar.gz"
      sha256 "c125cc296e39d744863bb236562132f3f254590a52f04b4a5a3e380b0bd781e1"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
