class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.16/supabase_3.3.0-beta.16_darwin_arm64.tar.gz"
      sha256 "f48267927b6c0c738ce825dd6c805d43862211984663fe6816276f1949a8958e"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.16/supabase_3.3.0-beta.16_darwin_amd64.tar.gz"
      sha256 "eb2bb86346bb6a12281804f2fdd5b0a7c247aae0dcbdbc1d204de9d68619fb17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.16/supabase_3.3.0-beta.16_linux_arm64.tar.gz"
      sha256 "b9ceac3cddc49b54fbf78d8afed99319107cb6c1ae0384550d5bc8dd17004662"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.16/supabase_3.3.0-beta.16_linux_amd64.tar.gz"
      sha256 "576c04320db1fd5bf8f2713c5f83c4c0d71fcb5412fd4e4bbede7ab71c70651c"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
