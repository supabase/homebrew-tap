class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.7/supabase_2.115.0-beta.7_darwin_arm64.tar.gz"
      sha256 "a86dc5a32b637e18e6666d54559a479ce3c48b0c8e1ea3aed9e40f96de02cb65"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.7/supabase_2.115.0-beta.7_darwin_amd64.tar.gz"
      sha256 "2ca992919325772eb676a4f7db56016ad7731ae29ca7665af56690254ffe748b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.7/supabase_2.115.0-beta.7_linux_arm64.tar.gz"
      sha256 "a31e778183ce42040941e10b94d2976ba895028cd1d56b7cd0df50fe71cf3783"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.7/supabase_2.115.0-beta.7_linux_amd64.tar.gz"
      sha256 "5045f271b8723d8d31444e5940832a12d971b858b8021c41128576e7d01608ce"
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
