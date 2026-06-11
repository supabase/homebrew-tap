class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0/supabase_2.106.0_darwin_arm64.tar.gz"
      sha256 "71240d9349f7a4e5b5a5654e99925547d7363388561f20d8c243af4e08adaded"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0/supabase_2.106.0_darwin_amd64.tar.gz"
      sha256 "896516ea6e9da250e113e9d4e5fa99d60aafa1ed5f2839da182e35a97e557080"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0/supabase_2.106.0_linux_arm64.tar.gz"
      sha256 "169304576f8c5f7f309b5677e9f4353b33da73a77a6f1605a3f8e1dd3153ce3b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0/supabase_2.106.0_linux_amd64.tar.gz"
      sha256 "1d6c0016fa0620e64814b63809d0d56a83b325bf261871957b8c2f293ba87572"
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
