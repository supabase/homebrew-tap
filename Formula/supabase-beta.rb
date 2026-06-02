class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.3/supabase_2.105.0-beta.3_darwin_arm64.tar.gz"
      sha256 "b040b36f2ce56e9f216e561840e224de3086f960805ba70e28f425820ece8c47"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.3/supabase_2.105.0-beta.3_darwin_amd64.tar.gz"
      sha256 "16ccc2c51c250fe1ca133689dbdd312d24e708aa85e73365a6aa8f7bdd070177"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.3/supabase_2.105.0-beta.3_linux_arm64.tar.gz"
      sha256 "94b6821dfdec4fd4559dc92e0c454341313357e2f9fbaa6d5d12233a0285b358"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.3/supabase_2.105.0-beta.3_linux_amd64.tar.gz"
      sha256 "48dafa70b0aa381576a647afe978727f3200f43eba87a326fd47272915403c63"
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
