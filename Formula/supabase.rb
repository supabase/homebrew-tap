class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0/supabase_3.3.0_darwin_arm64.tar.gz"
      sha256 "81a3bcac6d5fe8381882930fc5c3f27ae0ad28f61d72fbcc47cd910fe0845365"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0/supabase_3.3.0_darwin_amd64.tar.gz"
      sha256 "7104b653207224c49092cad5ae6f9254068c2a8f56a308055b3e6eade4f71402"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0/supabase_3.3.0_linux_arm64.tar.gz"
      sha256 "d98ecc5e323d59f0d1c744ff5ce779098230002d8ba1df5576809f52f47746ac"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0/supabase_3.3.0_linux_amd64.tar.gz"
      sha256 "8d12731ae522a8f263170ca719b33f163dd05f4365ae6c22b31714dfa1e92b9b"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
