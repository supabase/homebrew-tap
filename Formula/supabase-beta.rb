class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.15/supabase_2.102.0-beta.15_darwin_arm64.tar.gz"
      sha256 "5b3bbe7b3a4c32f24eb369de24109d80afbe6eebc1a3aa10997b169a025a9c83"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.15/supabase_2.102.0-beta.15_darwin_amd64.tar.gz"
      sha256 "478cde452f4313e4378d19d9a498eccf2a60f133c9f27b515fcf39bd38b4284f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.15/supabase_2.102.0-beta.15_linux_arm64.tar.gz"
      sha256 "44e11063babc45b0246d6b094f5cf3ea5603cda85aa251075816001beae8b22c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.15/supabase_2.102.0-beta.15_linux_amd64.tar.gz"
      sha256 "ffc6b721b1e1427c99cde8c6c33b2a3998642aa93997eadbd441223fa9518fca"
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
