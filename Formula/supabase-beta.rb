class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.3/supabase_2.109.1-beta.3_darwin_arm64.tar.gz"
      sha256 "cc160e11584b537c91a5208b7196a1f64173c5cf758f52779c2b27a2d28b9793"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.3/supabase_2.109.1-beta.3_darwin_amd64.tar.gz"
      sha256 "3e2ca157cc8b8b2d96adeba4c8f2fcb50d385f68b61f7ee77738e94a2750f20f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.3/supabase_2.109.1-beta.3_linux_arm64.tar.gz"
      sha256 "e29edc4f41b1d694b387e78c64b664fd4a6899c168aad489d6ec61087dbed1bb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.3/supabase_2.109.1-beta.3_linux_amd64.tar.gz"
      sha256 "bf557724b84fa2c801340058a1db3f79d6413fce0a721605051d0c395a2b637b"
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
