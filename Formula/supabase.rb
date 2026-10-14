class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.121.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.121.0/supabase_2.121.0_darwin_arm64.tar.gz"
      sha256 "a696418082800fea178d6efeadf66cbaa501f653657b525c95d570d7b2f47d67"
    else
      url "https://github.com/supabase/cli/releases/download/v2.121.0/supabase_2.121.0_darwin_amd64.tar.gz"
      sha256 "8e6696259bc187e48ef2732669e1e45539a630a6486e91484dd60dc50b2a676f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.121.0/supabase_2.121.0_linux_arm64.tar.gz"
      sha256 "896278173cd7c3632e9340e546129606a26e696e90bcaaa6f7b7490fe218efc7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.121.0/supabase_2.121.0_linux_amd64.tar.gz"
      sha256 "4b481189efbdc57cf2d37bdee5f1a0d29574314398564b32a6dfb76c0fcf275f"
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
