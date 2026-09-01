class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.15/supabase_2.117.0-beta.15_darwin_arm64.tar.gz"
      sha256 "cd3d28b7fb28be39df133b2f3c432c3b55bc450612184f5f48bdd0df98248900"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.15/supabase_2.117.0-beta.15_darwin_amd64.tar.gz"
      sha256 "f6a555b16df655c2280fc260c47f05914a23d42e92e4aae0a52f4d534a13f26d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.15/supabase_2.117.0-beta.15_linux_arm64.tar.gz"
      sha256 "86d47ff083618010d3f603d38a9a1a24041bc7287e9db628fa0a6bd06afcb1ff"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.15/supabase_2.117.0-beta.15_linux_amd64.tar.gz"
      sha256 "ba018eacb2a9e5e47c509bee01aed076e48b7a79194d343c157f94ce18c9d5c7"
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
