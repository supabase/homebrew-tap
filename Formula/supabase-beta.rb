class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.113.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.6/supabase_2.113.0-beta.6_darwin_arm64.tar.gz"
      sha256 "d7220d2be89f5da4960b64be558621fbc2981d513b020149412687c4189b1b78"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.6/supabase_2.113.0-beta.6_darwin_amd64.tar.gz"
      sha256 "ee96876bcf8dc00d675d5552ed8558e1d8f314a20e2a563263b29737919e1d76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.6/supabase_2.113.0-beta.6_linux_arm64.tar.gz"
      sha256 "ef9d3aabdff6c8090747e24be82d4e094e6ac0c340a94793c275699f806eaa91"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.6/supabase_2.113.0-beta.6_linux_amd64.tar.gz"
      sha256 "a676494affeb3d63ae8874a55fbfa0d72e53da9bf51c351961b7cbf1304a9edd"
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
