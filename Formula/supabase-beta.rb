class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.2/supabase_2.106.0-beta.2_darwin_arm64.tar.gz"
      sha256 "3a1cfa54fc0526bdb7691807a26d1ad08b638782d9f2aeb8a644de10a65c6feb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.2/supabase_2.106.0-beta.2_darwin_amd64.tar.gz"
      sha256 "0c97be408cd8e01da367aba92c710963fc7c82a504c4035a30054df8b531851f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.2/supabase_2.106.0-beta.2_linux_arm64.tar.gz"
      sha256 "d7ee57357206e199e61fde2031d350392e16a6867457e614739c9d3270754291"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.2/supabase_2.106.0-beta.2_linux_amd64.tar.gz"
      sha256 "d3f087f3d3b154cb8fa339238f593c4db93ac52eb97cefd06cb7a92426a595ab"
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
