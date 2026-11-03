class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.11/supabase_3.1.0-beta.11_darwin_arm64.tar.gz"
      sha256 "be27e9cdfbd33820a6844004b33e6fb488871aa1f340bcb111fdf9e589080c3c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.11/supabase_3.1.0-beta.11_darwin_amd64.tar.gz"
      sha256 "704af86481069cb4802be2e22b7917c5f9402c9aa788a839086ff3c6a71755b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.11/supabase_3.1.0-beta.11_linux_arm64.tar.gz"
      sha256 "7ccd863d8d3ed2da5081d27d3aadbd5c008bfe7aa4ea24b7ea1bdd4406833707"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.11/supabase_3.1.0-beta.11_linux_amd64.tar.gz"
      sha256 "eb3a7a15c0399e5cb66366c2d63cb191e22e29a38f53eb2a4abbc0c28944d459"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
