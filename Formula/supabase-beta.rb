class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.113.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.5/supabase_2.113.0-beta.5_darwin_arm64.tar.gz"
      sha256 "a71165c2f6f78c11bd4a4ea63ae7f165b4c03f155aec4183f5c3e24da5809b25"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.5/supabase_2.113.0-beta.5_darwin_amd64.tar.gz"
      sha256 "d70e34dc00280a471736f7fdfad5734d46dc34f2e5c5a87f1875ae8247113fe9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.5/supabase_2.113.0-beta.5_linux_arm64.tar.gz"
      sha256 "04c83f1bf9759db4b36173ada5e4308e90f61fa32ac051508525f71a96a37ef1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.113.0-beta.5/supabase_2.113.0-beta.5_linux_amd64.tar.gz"
      sha256 "b17cc3b33b16d071d0b3b3692ab56d5229b2ad5eb1da0489fa86b5c4ddd281b0"
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
