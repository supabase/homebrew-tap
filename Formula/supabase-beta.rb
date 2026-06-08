class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.11/supabase_2.106.0-beta.11_darwin_arm64.tar.gz"
      sha256 "b3e5f12a3ada9e05ca08c8da69b8caf72a625dbe73d5c3eb04855c27aa0bf3d3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.11/supabase_2.106.0-beta.11_darwin_amd64.tar.gz"
      sha256 "39dd4c98e88aa5f57a00fd150349c833341873649e0997ec94b63d8bd5fc4f81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.11/supabase_2.106.0-beta.11_linux_arm64.tar.gz"
      sha256 "166678eee42ea9593d83606568f20aca1a74569c4304cdcff351c76a92f02e8b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.11/supabase_2.106.0-beta.11_linux_amd64.tar.gz"
      sha256 "35a6f8aea0d63fb678ed21486607bc758d1e4faefa31992c6bc005dd28b7c7a1"
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
