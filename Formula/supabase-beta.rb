class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.2/supabase_2.111.1-beta.2_darwin_arm64.tar.gz"
      sha256 "e91c3e6b878350269b73bc1f9a94b459c67791f2a2b063c11da6fc5bc499b8d5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.2/supabase_2.111.1-beta.2_darwin_amd64.tar.gz"
      sha256 "605b9c3408a04105c8a8d3be505ac584f883c0aa7cf6f79ffd5d3114c0b6047a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.2/supabase_2.111.1-beta.2_linux_arm64.tar.gz"
      sha256 "dffaf5ec26925669b4fa34e8f031e7c22fe5151ee4d0a2db11c6090e56abeb4d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.2/supabase_2.111.1-beta.2_linux_amd64.tar.gz"
      sha256 "fea034315e5a457c376322c30050e7b8ea2a5ba3bf6ab5b93860cfcbd7cf6a4d"
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
