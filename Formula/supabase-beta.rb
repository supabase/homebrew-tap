class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.16/supabase_2.117.0-beta.16_darwin_arm64.tar.gz"
      sha256 "20097a91a2bc55a049f9b1ce9e9c3f8a1e508b4973f626bb9f15c982b0bfa35f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.16/supabase_2.117.0-beta.16_darwin_amd64.tar.gz"
      sha256 "4b94dca2eb4a10bc238208ecb6b8b87dcad42c830b87366179e19824cc88a64a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.16/supabase_2.117.0-beta.16_linux_arm64.tar.gz"
      sha256 "d1e901e48ccfb027e8901491aa3621e2555704aa03305d71c9d6f46c5a850a04"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.16/supabase_2.117.0-beta.16_linux_amd64.tar.gz"
      sha256 "7a144cdf2971f3bbde0be6ed04c8f7a9962b809791b9de41d112e707ba56d003"
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
