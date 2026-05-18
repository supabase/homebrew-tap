class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.1/supabase_2.100.1-beta.1_darwin_arm64.tar.gz"
      sha256 "9c059586fd4b4ffed2d995312dbe10f44e4fbbde8fa300a4bce10451705a2f6a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.1/supabase_2.100.1-beta.1_darwin_amd64.tar.gz"
      sha256 "3e7b5c6dea5b9936879a93f74bec742aa0e01fca421813035b3359f4b4996d06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.1/supabase_2.100.1-beta.1_linux_arm64.tar.gz"
      sha256 "3b4253d243e6878acfa8322c896bc5bec14776ab208df4d6e6fee36ba66f5352"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.1/supabase_2.100.1-beta.1_linux_amd64.tar.gz"
      sha256 "64311f21345e6b4b10fd23ac00df5954d4f7567514a0ab49c3dea0fed7a6fa5e"
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
