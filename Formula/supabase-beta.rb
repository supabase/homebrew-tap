class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.17/supabase_2.109.1-beta.17_darwin_arm64.tar.gz"
      sha256 "baf89d75cd136f95422e7c0f2f8113b00d8c44e14a61e093873c34cedbe2b223"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.17/supabase_2.109.1-beta.17_darwin_amd64.tar.gz"
      sha256 "b0261cf80acb206630ba081f4fff1604b12d03d7bf2a148e4e79341d8b436af5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.17/supabase_2.109.1-beta.17_linux_arm64.tar.gz"
      sha256 "506a6ce310e4741fec4bd5c41e5e44fff7421eb5645855e4cc38358dbefdbc38"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.17/supabase_2.109.1-beta.17_linux_amd64.tar.gz"
      sha256 "be3d473f4bc7c9573dd37ee23a7d284cd5d68248e6347c836abf0130fff270c6"
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
