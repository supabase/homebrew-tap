class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.23/supabase_2.106.0-beta.23_darwin_arm64.tar.gz"
      sha256 "30c63d308b52eacabb001204391d2c172f7fd3e9555f9bdc9e5b65c4ba368fd5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.23/supabase_2.106.0-beta.23_darwin_amd64.tar.gz"
      sha256 "65ae6a93f69eb8a123d39f43954e716eeaaeff724ff89795a1c167fd86395d7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.23/supabase_2.106.0-beta.23_linux_arm64.tar.gz"
      sha256 "481b903d995ae92a2142e135f59acfda96c9399ad09f4a0a46e4c1f64ae2c21f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.23/supabase_2.106.0-beta.23_linux_amd64.tar.gz"
      sha256 "986567d477c744b4151d0d62ad70fd494b7a94272029c0323dae16c31cf84ba2"
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
