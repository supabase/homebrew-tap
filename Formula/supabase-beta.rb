class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.7/supabase_2.111.1-beta.7_darwin_arm64.tar.gz"
      sha256 "4b253a2fc770b27c8bf551f225276b201893f3cd92168a29b24c13d759fec54d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.7/supabase_2.111.1-beta.7_darwin_amd64.tar.gz"
      sha256 "2b1f9e96ddc5987d8c4f0bf95f6f9434b1cf5201a4c3936934681f7e155c0ed2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.7/supabase_2.111.1-beta.7_linux_arm64.tar.gz"
      sha256 "78613438e51f9e7d9700b19f257ac187a9263d558ca693f2340c9ca022564134"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.7/supabase_2.111.1-beta.7_linux_amd64.tar.gz"
      sha256 "ab9fc74bc2ec3fe863dec4e890d95bc20e51ec5fae833f79859a42a83e91bee0"
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
