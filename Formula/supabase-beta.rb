class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.14/supabase_2.108.0-beta.14_darwin_arm64.tar.gz"
      sha256 "bcf12f5c08646c64209e0dbd574c4491cae6cf1a1b649274bf66be7fd095841d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.14/supabase_2.108.0-beta.14_darwin_amd64.tar.gz"
      sha256 "d5b1c42dfc6e4b56b9c488d2bad56104fa42dacc90e7b77224f6529a8ded3f96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.14/supabase_2.108.0-beta.14_linux_arm64.tar.gz"
      sha256 "a1010a20027729cd8f74be95d3a877b0836bb5e3b5dbd2f0a1dbd6e443854137"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.14/supabase_2.108.0-beta.14_linux_amd64.tar.gz"
      sha256 "1cbf7fb8777292b02d5e6d0398989413dddd9b9b78f95bbb1b5d81cd7690cf81"
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
