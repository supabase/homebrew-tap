class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.35/supabase_2.108.0-beta.35_darwin_arm64.tar.gz"
      sha256 "f03c76a01bd5c9be3190c9e73da8678d5aebaf5a0ddf86cfea423c948eb66324"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.35/supabase_2.108.0-beta.35_darwin_amd64.tar.gz"
      sha256 "db5973e930b5b5fa4e6f9b1340e0c7b19a47eee5cbae541ae6f20ca915604d97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.35/supabase_2.108.0-beta.35_linux_arm64.tar.gz"
      sha256 "a45411a575755a8fd6d01cae00db7cb2abd02a8549ddb7995f2d60789710a49f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.35/supabase_2.108.0-beta.35_linux_amd64.tar.gz"
      sha256 "1ea0536a0db89714e956efd45215295299a7b98c9192cf808415ac3a5d4148b3"
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
