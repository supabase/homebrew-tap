class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.15/supabase_2.109.1-beta.15_darwin_arm64.tar.gz"
      sha256 "592229abb8966fcc59a55a4e250875351b8230950a8fcd3e6f7a31f1e9e0ef78"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.15/supabase_2.109.1-beta.15_darwin_amd64.tar.gz"
      sha256 "f08e2ea7e0b99bfe6f11a37b296d3c749311f4c95b34571fa3d960a06dfc94c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.15/supabase_2.109.1-beta.15_linux_arm64.tar.gz"
      sha256 "96e3208673ed864dc15b2d4a74093ee58bb437b451dccaaa05114afa7fcdd0cb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.15/supabase_2.109.1-beta.15_linux_amd64.tar.gz"
      sha256 "b3bded5f3060b5e72414a908882865f765e986f91cf84161fe43f958659e1a14"
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
