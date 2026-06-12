class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.5/supabase_2.107.0-beta.5_darwin_arm64.tar.gz"
      sha256 "9d1d8035c276eaa0963e0eba21311ed894015153e131f685f135f2ca59584a70"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.5/supabase_2.107.0-beta.5_darwin_amd64.tar.gz"
      sha256 "4428b471e649ae71a69a8bd79f14c018000d042fa5e8e7693be619a08615bffc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.5/supabase_2.107.0-beta.5_linux_arm64.tar.gz"
      sha256 "506c19e8e1aec9c20b87cc201955ab4824d15eca1e5c583163c9c4a129fecc6c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.5/supabase_2.107.0-beta.5_linux_amd64.tar.gz"
      sha256 "2daf2baa610d977df6b0821809cbe5e7f5f432e093703d8e6fb290c8e76b0f94"
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
