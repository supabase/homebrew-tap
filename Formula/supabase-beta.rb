class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.6/supabase_2.118.0-beta.6_darwin_arm64.tar.gz"
      sha256 "0303694122f79ed0cd2d0862527253b96fc97a96e84818471ae8549a6c22f0ff"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.6/supabase_2.118.0-beta.6_darwin_amd64.tar.gz"
      sha256 "21fd19b7aef1a08322a495f2db4ad745e94a4080561da8405964d895092230dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.6/supabase_2.118.0-beta.6_linux_arm64.tar.gz"
      sha256 "096c52f2aff480ac857c64d4c676d2b7dad17ec6ea1cb471350ff9d93fe7b2d5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.6/supabase_2.118.0-beta.6_linux_amd64.tar.gz"
      sha256 "c8f5375e62b19e9f1d2a1e58dd4f236d857b59aab71bdd1085446791605994ff"
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
