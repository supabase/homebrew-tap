class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.1-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.5/supabase_2.111.1-beta.5_darwin_arm64.tar.gz"
      sha256 "374931daf28cd7a975af066ef79b3d3e667f7b3bf2acc3a88b8f1468ee4076e0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.5/supabase_2.111.1-beta.5_darwin_amd64.tar.gz"
      sha256 "3d8a41067096ed490859c771d26b2a859f9575af0bbde3c3de8b9158427f97f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.5/supabase_2.111.1-beta.5_linux_arm64.tar.gz"
      sha256 "c5dc93d873a92dfbef9ae618f0f7437665c0db54fc3d3a638465d601e275ba6e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.1-beta.5/supabase_2.111.1-beta.5_linux_amd64.tar.gz"
      sha256 "b6b85638981833d3c5b0361b2060fca818187d97a2d73278c7328eba36093200"
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
