class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.1/supabase_2.110.1-beta.1_darwin_arm64.tar.gz"
      sha256 "e059032ec9775cf7803f0958ce24f047ed18415157e47b140fb08b7a8ed76487"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.1/supabase_2.110.1-beta.1_darwin_amd64.tar.gz"
      sha256 "77fbccd50a0292cd23b17e5fde4e8f9b0408c19278f3bd4e1e950a521e1841d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.1/supabase_2.110.1-beta.1_linux_arm64.tar.gz"
      sha256 "4edfacbc59343d11dd0352f4a6107e4ad1c9463028c2096e945a92f2bab5ea5b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.1/supabase_2.110.1-beta.1_linux_amd64.tar.gz"
      sha256 "e1dd66c684a465d025e36fe89f6aca681457f61d750bc72c211112085b1a67a9"
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
