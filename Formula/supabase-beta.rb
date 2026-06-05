class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.5/supabase_2.106.0-beta.5_darwin_arm64.tar.gz"
      sha256 "ee3811f373f55d0b5907ed53ea4b4bf6e20e1ecbf64793e6380f40d8e9ec7e93"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.5/supabase_2.106.0-beta.5_darwin_amd64.tar.gz"
      sha256 "a0e225e31a46a43c4b855d6048e4ff39c165734a66ae940bc2023258f043254e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.5/supabase_2.106.0-beta.5_linux_arm64.tar.gz"
      sha256 "e0a42da094f506a0b16ab08b07339dd232880df35678fb18060c6df6822de4be"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.5/supabase_2.106.0-beta.5_linux_amd64.tar.gz"
      sha256 "362cc4ff3284ba40e88e1b3e6a1a14081dc7c3dc248f9509546e342cead7cd95"
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
