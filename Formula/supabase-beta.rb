class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.9/supabase_2.108.0-beta.9_darwin_arm64.tar.gz"
      sha256 "6d4e53285ede29f375288ab8942c88683e650f805b7144a56bffce3e83dfbd63"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.9/supabase_2.108.0-beta.9_darwin_amd64.tar.gz"
      sha256 "08fee7ea42cbe384302cd0b27224fe92c1c2f387670cab8b1751bd45dc293801"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.9/supabase_2.108.0-beta.9_linux_arm64.tar.gz"
      sha256 "f543093af6a6c5513a47c2a90cf35345c8e7e475ac0e5eb92797e2bd501a1b66"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.9/supabase_2.108.0-beta.9_linux_amd64.tar.gz"
      sha256 "bf69902e89e82861798f410a787d226e35b1773e73714099ce1c29c803c36f6b"
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
