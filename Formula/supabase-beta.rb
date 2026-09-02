class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.6/supabase_3.0.0-beta.6_darwin_arm64.tar.gz"
      sha256 "a49bf9f16d3cc5bee92393f9a6e26f4753971b5738b2ee6575a81db7b45cf655"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.6/supabase_3.0.0-beta.6_darwin_amd64.tar.gz"
      sha256 "f618e7d203fc5c01efe05cc8bbcea0cde226321901aefa2bf06f61d728d710a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.6/supabase_3.0.0-beta.6_linux_arm64.tar.gz"
      sha256 "64d0987eea86844997eda7a5be848471d02d638a3f606b3cf759b2052919b460"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.6/supabase_3.0.0-beta.6_linux_amd64.tar.gz"
      sha256 "5629a125c6dde8374749852463ca8478cfed55f5f5e3d46e582f4de8320d914f"
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
