class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.8/supabase_2.111.0-beta.8_darwin_arm64.tar.gz"
      sha256 "21c391c3263b9007e171316a3359bd1aa18edeac43d6ca228ef04699b902f025"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.8/supabase_2.111.0-beta.8_darwin_amd64.tar.gz"
      sha256 "5c1e30f02fa07c25cfac64e0fcbb8507d56073d1dd6874aa0eb88c0c36d667c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.8/supabase_2.111.0-beta.8_linux_arm64.tar.gz"
      sha256 "a87b85a5acc6216e54fc2f20b0d988c02ef88b15008611a64e6fb8f67beb7b79"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.8/supabase_2.111.0-beta.8_linux_amd64.tar.gz"
      sha256 "0e0b50c1a8d2455faa9b55cd259ef9c62e2cd0ff57c07e057e9005e8b9eef449"
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
