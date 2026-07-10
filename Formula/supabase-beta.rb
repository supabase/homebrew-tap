class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.23/supabase_2.110.0-beta.23_darwin_arm64.tar.gz"
      sha256 "dfbdec82f578a116f72a2fbb48e0e4a82d22a9ef6000c733644eac4de0eaadca"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.23/supabase_2.110.0-beta.23_darwin_amd64.tar.gz"
      sha256 "df4239f57521c05733f9dff5364cf8fd59bf6e2d7bc9e8bb88de6352d41fc7a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.23/supabase_2.110.0-beta.23_linux_arm64.tar.gz"
      sha256 "adfd30d4889ea4b24f3cda27940c6fae1f0a03e50b527df5fe8a2cf63884d92a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.23/supabase_2.110.0-beta.23_linux_amd64.tar.gz"
      sha256 "3ff2eae4fd43451ab5603669835984e96535aa707858dd7ec4fc276588260a0b"
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
