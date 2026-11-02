class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.1-beta.1/supabase_3.0.1-beta.1_darwin_arm64.tar.gz"
      sha256 "b880e6faa9dde6923586a95700e0a2da2715ecfa04f0c7f39c0ca752101d8501"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.1-beta.1/supabase_3.0.1-beta.1_darwin_amd64.tar.gz"
      sha256 "72024c16b3c2917ef1efe9aed06b92d259f21518b0a470171a0ef7b970ffb04d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.1-beta.1/supabase_3.0.1-beta.1_linux_arm64.tar.gz"
      sha256 "36a1662af69aa6fe3df3675eee9db28b0b4433183e47087cdc2d67067e417554"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.1-beta.1/supabase_3.0.1-beta.1_linux_amd64.tar.gz"
      sha256 "2e7d3ed3d2f090d45369643f600bcee0ecd307a8e509ac7f13944cd84e86c5da"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
