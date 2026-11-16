class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0/supabase_3.2.0_darwin_arm64.tar.gz"
      sha256 "c9e27cdaf848f216879df0a354fca96c7e5ac0d1527d934b730ec62ba348b86d"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0/supabase_3.2.0_darwin_amd64.tar.gz"
      sha256 "0b02ac63d6400b3f238a442c3d2aa72d2977b3a5dcd3f2e679095a004733102e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0/supabase_3.2.0_linux_arm64.tar.gz"
      sha256 "cd9b4b6c5b04c6fb68c8bf6b35a7ed2924b6671cda263613fd8a7273b9fa167b"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0/supabase_3.2.0_linux_amd64.tar.gz"
      sha256 "fb88b175a817563505be02c60872060bcb8d5c869a1aa5656eaeb085d4a2f1e4"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
