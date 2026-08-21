class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.10/supabase_2.115.1-beta.10_darwin_arm64.tar.gz"
      sha256 "6e81fa509ec2e2da2e70b78f2d7439eac4fe303979391565bceb3d87a1bd5807"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.10/supabase_2.115.1-beta.10_darwin_amd64.tar.gz"
      sha256 "03ae616c88d2498f8654859d7cd7d25b00f51f9216aa3b5b5764c4e07333e870"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.10/supabase_2.115.1-beta.10_linux_arm64.tar.gz"
      sha256 "e1c8714f3fea877868e2c5e3502169009e6f64df3a31cedafcc5f396caec3cee"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.10/supabase_2.115.1-beta.10_linux_amd64.tar.gz"
      sha256 "2a283e03ba1533025ebe773ec2c4bebd32d308b5a579e5ee5c744294b176c138"
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
