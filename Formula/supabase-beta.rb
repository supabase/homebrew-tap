class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.7/supabase_3.1.0-beta.7_darwin_arm64.tar.gz"
      sha256 "107ca66802027638a79ed508af8dffcb5be73ad99238fdde9ccf919be77a1ece"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.7/supabase_3.1.0-beta.7_darwin_amd64.tar.gz"
      sha256 "46dc8c8529cc6ae765d70b5026f013b287f3826cd4ae264ccd65b443f9cb16e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.7/supabase_3.1.0-beta.7_linux_arm64.tar.gz"
      sha256 "fb10ff315e0997022c6eeb8b45bf21a2f29f8f131778f0303ba9f237b6ffd145"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.7/supabase_3.1.0-beta.7_linux_amd64.tar.gz"
      sha256 "b9a66befe357a83967814fa212269a482243975a972a63ca8b6c22a2cca306a8"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
