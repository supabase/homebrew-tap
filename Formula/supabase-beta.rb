class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.101.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.101.0-beta.1/supabase_2.101.0-beta.1_darwin_arm64.tar.gz"
      sha256 "af7d53cb52b835c24d8b83979ab7f7047facd983c592ca5c401196fb4603c1d5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.101.0-beta.1/supabase_2.101.0-beta.1_darwin_amd64.tar.gz"
      sha256 "5ee70810d9e4f47e04bb31f172c4e50e032c9d9074842c8aa98dd789b3ba7754"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.101.0-beta.1/supabase_2.101.0-beta.1_linux_arm64.tar.gz"
      sha256 "39161be05e7bcc7e6ecc3e9bcac3073d327d1ea23ea3c97004567600226006d5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.101.0-beta.1/supabase_2.101.0-beta.1_linux_amd64.tar.gz"
      sha256 "bfa0e9daf4f068ef376c517d7d9a1d765a8b22c94c4c8422d8480a302f76ac8b"
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
