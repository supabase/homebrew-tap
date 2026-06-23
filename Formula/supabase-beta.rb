class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.23/supabase_2.108.0-beta.23_darwin_arm64.tar.gz"
      sha256 "f86e251778568c5d97976b9fe995b2385abc2258417511951376d0411a080272"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.23/supabase_2.108.0-beta.23_darwin_amd64.tar.gz"
      sha256 "6f21f234216474b5099f4e2032e5fa71dd3b5b6df7bf300ae0ecb488ca1b9c67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.23/supabase_2.108.0-beta.23_linux_arm64.tar.gz"
      sha256 "d850c9b3709a7ebe2cf837e67363ff2fdb4866820a163cfb0a70fded8598351f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.23/supabase_2.108.0-beta.23_linux_amd64.tar.gz"
      sha256 "024fd3f48e92c82eb0e1b602d5da08a6f85455336f969b364375a36935459000"
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
