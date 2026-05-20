class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.2-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.3/supabase_2.100.2-beta.3_darwin_arm64.tar.gz"
      sha256 "2640c64fda4e4b07bf601857b056617385be475d72931e42ab0896615a735048"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.3/supabase_2.100.2-beta.3_darwin_amd64.tar.gz"
      sha256 "952934e9a9d12e2a64b7c6ca6cd1102842d0c516c995a367baa37690c10a7505"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.3/supabase_2.100.2-beta.3_linux_arm64.tar.gz"
      sha256 "594eda161e489c87db687d78f4dac04fc8f16295eb556db8b6ba2c7a3b2e4db1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.3/supabase_2.100.2-beta.3_linux_amd64.tar.gz"
      sha256 "3a1b74ebd3ff75992ee7e438ad67a8d8147392fb6302c6ad72c0f518c8527b71"
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
