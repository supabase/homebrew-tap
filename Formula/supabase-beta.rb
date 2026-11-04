class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.14/supabase_3.1.0-beta.14_darwin_arm64.tar.gz"
      sha256 "5d6e20a485eb28071e56bc8f284b79b3dde258a02915608c6543124e44fc0619"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.14/supabase_3.1.0-beta.14_darwin_amd64.tar.gz"
      sha256 "f2f7974deabbb9f65727e39d1240548e660bfe32d1566ea627d982fe2b08f55f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.14/supabase_3.1.0-beta.14_linux_arm64.tar.gz"
      sha256 "578882dbdd0b772a365563854a3d2f249ae48bd23d8ab90d0cf35af0a9f5d59d"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.14/supabase_3.1.0-beta.14_linux_amd64.tar.gz"
      sha256 "2cf860b5e3feb3ed1bbb8ef3c6a2a3c5e929b5ddd86e5da0275e2121df3fd0a1"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
