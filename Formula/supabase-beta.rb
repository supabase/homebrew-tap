class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.14/supabase_3.2.0-beta.14_darwin_arm64.tar.gz"
      sha256 "4f7e2c53e6c21b5c8fa73c710f9de0ee8cd96f256b706b266396cc598de385cc"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.14/supabase_3.2.0-beta.14_darwin_amd64.tar.gz"
      sha256 "8a9ac30139fbbfcf4e8cc32bbba574c8857219e3cc879bb103e65668484e0bc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.14/supabase_3.2.0-beta.14_linux_arm64.tar.gz"
      sha256 "38cf117cad87e5248810bb26c3375873e55c56d9190185286a8118c031c1f19f"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.14/supabase_3.2.0-beta.14_linux_amd64.tar.gz"
      sha256 "3e9e84fc772bbedaac553a166c33693e4008ea7c698965958680fc1ba8821bc6"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
