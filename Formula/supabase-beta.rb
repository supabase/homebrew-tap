class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.17/supabase_2.110.0-beta.17_darwin_arm64.tar.gz"
      sha256 "c9191f40df13368ff7ea63876f8c61f67878a78a7d63c73e40a6a1d54d0c3816"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.17/supabase_2.110.0-beta.17_darwin_amd64.tar.gz"
      sha256 "a023e330e1e6289cf26178d6548393e2d95bf2603af38aade58bbeea2886121b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.17/supabase_2.110.0-beta.17_linux_arm64.tar.gz"
      sha256 "451d4275d82e9aca4d12a668e6bcfc1d7ad55cb5b957f49c89e228428d83dae9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.17/supabase_2.110.0-beta.17_linux_amd64.tar.gz"
      sha256 "3b8df2b911999fa10458655ea6ea962b78235a9557581a6fde2f6e251e1e29b6"
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
