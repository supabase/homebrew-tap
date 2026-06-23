class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.28/supabase_2.108.0-beta.28_darwin_arm64.tar.gz"
      sha256 "3be4591b4bd423d19d70d39e594319be30a6bd9baf89a1216e6fa8e8607437b4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.28/supabase_2.108.0-beta.28_darwin_amd64.tar.gz"
      sha256 "7f2ca2a0dd8fc83733131e8773d8a2fb05d0afc844c9bfa024c5cad8d470112d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.28/supabase_2.108.0-beta.28_linux_arm64.tar.gz"
      sha256 "7f9aab89333136b528a822d85c94bf729d5d440e5e91f3688fdcf462b62272d8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.28/supabase_2.108.0-beta.28_linux_amd64.tar.gz"
      sha256 "ac1e922c1f8c2622ab4414e2591a0b181adbd11bbea966639e8c628fa01da388"
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
