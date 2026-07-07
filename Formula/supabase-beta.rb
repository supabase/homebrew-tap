class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.2-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.2-beta.1/supabase_2.109.2-beta.1_darwin_arm64.tar.gz"
      sha256 "0ca22128dd1f7a9a8620ddfdc780e4817065968dacf6d421e37505b57e7061dd"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.2-beta.1/supabase_2.109.2-beta.1_darwin_amd64.tar.gz"
      sha256 "04ec1f7d767066e7e2bd4a28d1225e6ef7f5b26a56b16b3b84e71112180d54f6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.2-beta.1/supabase_2.109.2-beta.1_linux_arm64.tar.gz"
      sha256 "57153c3d99e48cd83bfda76d6ba853e57351fef9b05ea9e77b1605bb05e37b37"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.2-beta.1/supabase_2.109.2-beta.1_linux_amd64.tar.gz"
      sha256 "9dd9d6833fbda22d91e9a5a331b9e55ca2f9161ffaff49ca6e3bfffae946cd01"
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
