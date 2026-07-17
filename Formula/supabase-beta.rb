class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.31/supabase_2.110.0-beta.31_darwin_arm64.tar.gz"
      sha256 "0122d1f3e56e83201e92ca72dcacb83eda53200a6518f56b187afc6323eb6359"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.31/supabase_2.110.0-beta.31_darwin_amd64.tar.gz"
      sha256 "91f31783cfc9cc0653c2fc7b30d79b8fe90231bca25b79ddba7f364d1882480b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.31/supabase_2.110.0-beta.31_linux_arm64.tar.gz"
      sha256 "f4744fdc35f589327a3597d98380681223daeb043516f89d463edbffb5de0e56"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.31/supabase_2.110.0-beta.31_linux_amd64.tar.gz"
      sha256 "f2ecb73bfc43a37169b6907ce5611d12b9ce1af30ed90fd144249bd760822016"
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
