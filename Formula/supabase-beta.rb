class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.118.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.3/supabase_2.118.0-beta.3_darwin_arm64.tar.gz"
      sha256 "6a8230aead1a1890f746fd1da7eae05beddca933500e0ff346d75ec7c93263d7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.3/supabase_2.118.0-beta.3_darwin_amd64.tar.gz"
      sha256 "5fa4bf604c34dcaa764ce4545bdfabcf336341cf7501b9cb451ff3ddb3d78c78"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.3/supabase_2.118.0-beta.3_linux_arm64.tar.gz"
      sha256 "556d85473de1914a5862ce31937ccfd3211ffaa7ca49011f6dcff4b7cc0d137f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.118.0-beta.3/supabase_2.118.0-beta.3_linux_amd64.tar.gz"
      sha256 "9af13172f89e91ea2dc9d975cc7463350f0c9f136256602c2bb67658c787ec09"
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
