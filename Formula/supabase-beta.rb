class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.8/supabase_2.109.1-beta.8_darwin_arm64.tar.gz"
      sha256 "13dffaaead74978ad89fd600213a2ff74cba12eb050783075a092caed020aa3e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.8/supabase_2.109.1-beta.8_darwin_amd64.tar.gz"
      sha256 "e85b26b9074625a72ee53f184723cefb0de0eb07db0f50294a9dd38ed7b09d95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.8/supabase_2.109.1-beta.8_linux_arm64.tar.gz"
      sha256 "eef061cf74e50665f973d55dc7bcd562ea0f7a086f7290ee8b100e501937a0cb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.8/supabase_2.109.1-beta.8_linux_amd64.tar.gz"
      sha256 "0179f421e30a7b4db22e810f5247a0b1fd92d1fee70af4bc469e96cf31ebc7d5"
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
