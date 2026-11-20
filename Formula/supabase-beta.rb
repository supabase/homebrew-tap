class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.13/supabase_3.3.0-beta.13_darwin_arm64.tar.gz"
      sha256 "860444bb77a460e4ab404e0bc2a72605f337b4f8e6526cf41b25dd2a2ce7e948"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.13/supabase_3.3.0-beta.13_darwin_amd64.tar.gz"
      sha256 "6c827d7c2f83e7c9ea2d8fbc47bd38df241f0815f8d888f127a1212ee804c317"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.13/supabase_3.3.0-beta.13_linux_arm64.tar.gz"
      sha256 "26049e7e96c9968fad5f07200e83916da814370d096f5c2a68f9c4f4db172c02"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.13/supabase_3.3.0-beta.13_linux_amd64.tar.gz"
      sha256 "8d3607abf4b1eadd0d3d7160520fb884cbcf430d16edfa23c240f6b47bee1034"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
