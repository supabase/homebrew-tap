class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.1/supabase_2.116.0-beta.1_darwin_arm64.tar.gz"
      sha256 "c9e0b05f0a3e38d59305613efc840863decd8f58d5105efe3f494ff6cd7c34be"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.1/supabase_2.116.0-beta.1_darwin_amd64.tar.gz"
      sha256 "fee79dd196652d5e532c9c4e2908d0db344be785d822352403be31851f1e89dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.1/supabase_2.116.0-beta.1_linux_arm64.tar.gz"
      sha256 "88f6f36a61d4e053375d1a4fc61e4e3642b337791aebe1df32887d2f55d5570a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.1/supabase_2.116.0-beta.1_linux_amd64.tar.gz"
      sha256 "4c0b2fdebae3800bc3fa3174951c425273e2efa58e78a43f265e67d70c96f39f"
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
