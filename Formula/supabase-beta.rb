class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.7/supabase_2.107.0-beta.7_darwin_arm64.tar.gz"
      sha256 "109b1ed69a3925985559a7c5bc10cdd520186112223e2b284ae615c34d772cf5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.7/supabase_2.107.0-beta.7_darwin_amd64.tar.gz"
      sha256 "4b12f2519da02206cc91aba17b73aa167e47a70b0df182ac7729e964b9e48a13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.7/supabase_2.107.0-beta.7_linux_arm64.tar.gz"
      sha256 "e7ee091ac831b9b87631b0b157624e418f5b50f6e98527c1dc94c50d5df04832"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.7/supabase_2.107.0-beta.7_linux_amd64.tar.gz"
      sha256 "3417ace442096a0541f23758be9357c2a9700b046bea54ef5812474873bd818e"
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
