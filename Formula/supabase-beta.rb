class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.14/supabase_2.106.0-beta.14_darwin_arm64.tar.gz"
      sha256 "75aac7268e40bd67751ffeda76fec8f60400f044e71a8c5c15c6f248fcc0601a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.14/supabase_2.106.0-beta.14_darwin_amd64.tar.gz"
      sha256 "0a9c855fbcaedf3eef248b6309d36cf4e92897762d91319f32f20332a20aa0a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.14/supabase_2.106.0-beta.14_linux_arm64.tar.gz"
      sha256 "ac0aad2de4a2d2ffd58c7eb8bda66992932a2467cce089ac04b5d2d94dd7e6a8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.14/supabase_2.106.0-beta.14_linux_amd64.tar.gz"
      sha256 "1a7dc5c1f01c3f72390aecd59d3acdd3bbf0c339380241fa3ea33640c4f59c65"
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
