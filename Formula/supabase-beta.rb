class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.30/supabase_2.110.0-beta.30_darwin_arm64.tar.gz"
      sha256 "170b2a21c93d3001d6461afacfddf843908f83937d002730c715b0250169aee1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.30/supabase_2.110.0-beta.30_darwin_amd64.tar.gz"
      sha256 "767f155297e5a5f52dd970aa797f4c043fe1fa4a5a9c547543ae979d787784f9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.30/supabase_2.110.0-beta.30_linux_arm64.tar.gz"
      sha256 "e326afc79b1d3b891b1c455fbf2ed3bc724c4f6ad924dd657577a27cf1534860"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.30/supabase_2.110.0-beta.30_linux_amd64.tar.gz"
      sha256 "9b084acd576faf4ef9defc1c85313c2bb2bb6ddedaa7aedf7ef20dc62970c31a"
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
