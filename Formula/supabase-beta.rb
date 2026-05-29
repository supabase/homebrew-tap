class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.4/supabase_2.103.0-beta.4_darwin_arm64.tar.gz"
      sha256 "1530e52c5642b18542b096c6dfecc8aaccc0cc278a6094b59232f68e6b1610f9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.4/supabase_2.103.0-beta.4_darwin_amd64.tar.gz"
      sha256 "5ab1a2e42985eb6381e5118fb78376c63f564fcea8901752387afbbfeedf0e8a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.4/supabase_2.103.0-beta.4_linux_arm64.tar.gz"
      sha256 "582dae819e36a3a7d73928e1059e14531da9033862a5650dd35a90a83d1c6edc"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.4/supabase_2.103.0-beta.4_linux_amd64.tar.gz"
      sha256 "d60c0e2a9849fd8b5ff09a0994cb55d548415efe56031ae821dd8be11b68e676"
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
