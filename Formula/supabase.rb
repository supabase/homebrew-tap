class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0/supabase_2.107.0_darwin_arm64.tar.gz"
      sha256 "1f3ebf78a7080a0e684bfa83611548d903a82ce9c5bcdedf4f7fb4e87cb7348a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0/supabase_2.107.0_darwin_amd64.tar.gz"
      sha256 "230d26dc50268a24013ec4260e16b35364615d8bfde403a235a34a3a2df85ce6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0/supabase_2.107.0_linux_arm64.tar.gz"
      sha256 "4d6a2153b7732ac6a8e69da49643423e67b9e07b8a5a4dfdcfb39c8438644421"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0/supabase_2.107.0_linux_amd64.tar.gz"
      sha256 "3ac074ce400670ac51d78168f3e8f67726edb1769480a613370cb19ee17f7fa9"
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
