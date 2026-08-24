class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.3/supabase_2.116.0-beta.3_darwin_arm64.tar.gz"
      sha256 "438182b29fcad797f7ecf3873060081f2cfa86c3b79cd3acaf854ab1b8aecfb3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.3/supabase_2.116.0-beta.3_darwin_amd64.tar.gz"
      sha256 "2d6f54b58c29f72d78c5781ad34a3152a189601cb01a99f9a7b8fcac621902b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.3/supabase_2.116.0-beta.3_linux_arm64.tar.gz"
      sha256 "44d1a9b18823065d985be99c78dd6bdba4263515c8e3d10bc6b1f03ae8f4b18f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.3/supabase_2.116.0-beta.3_linux_amd64.tar.gz"
      sha256 "d9ef6900dfb48632527a8775d9e69a30b9a45ec541e7e64b9a15cf93e3006986"
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
