class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0/supabase_2.103.0_darwin_arm64.tar.gz"
      sha256 "562be99c2aa390f33e2c275ffad800cb9dc39bfa00b3a7e126be92043f6679d1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0/supabase_2.103.0_darwin_amd64.tar.gz"
      sha256 "b0ab27bb936638919b3d1bbab88f2cb5d750c99cf204da16b9f683ebfccb05c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0/supabase_2.103.0_linux_arm64.tar.gz"
      sha256 "6edbcece18bb6fa949891547d3abbd8ce79fa7666bc72789a5d0b9e34f2e2941"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0/supabase_2.103.0_linux_amd64.tar.gz"
      sha256 "1eaeee74576b2b296c9731ed729c38ec91f48096be7c10290e324888a310ded7"
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
