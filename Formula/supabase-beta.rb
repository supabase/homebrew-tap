class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.1/supabase_2.103.0-beta.1_darwin_arm64.tar.gz"
      sha256 "8d557b60e71fe91171202eae9b75dfb13250262a5bedab856e4df153c034c665"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.1/supabase_2.103.0-beta.1_darwin_amd64.tar.gz"
      sha256 "4f1998a03b9812d4f62e1e19e2ee7713b15b9133a20b411efe146f823e67b1b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.1/supabase_2.103.0-beta.1_linux_arm64.tar.gz"
      sha256 "91c8bd6d936baafdb99f94f761f60da5612d1b87bc8407c4e9643a1ecd39811e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.1/supabase_2.103.0-beta.1_linux_amd64.tar.gz"
      sha256 "f8321fba404456641faaaf97397142a5afbc7c4f3d99177670bdfb424cc1fff9"
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
