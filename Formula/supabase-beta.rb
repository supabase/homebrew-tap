class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.18/supabase_2.110.0-beta.18_darwin_arm64.tar.gz"
      sha256 "cb01da85880220cf6fd9f1287acd24af0c1b8f36051aa7280006505bece88db1"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.18/supabase_2.110.0-beta.18_darwin_amd64.tar.gz"
      sha256 "9bc41df9bad893a8133ea69c7b91290e5e63446a61acd72d368559f483eb4ac2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.18/supabase_2.110.0-beta.18_linux_arm64.tar.gz"
      sha256 "e392d5f9365365a8a92a3f045ccd2b8f8678429db19eeb32ef6569db81b9f2ee"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.18/supabase_2.110.0-beta.18_linux_amd64.tar.gz"
      sha256 "1f192b00eb819df19bd1aa4f7d70b5143854987a4e5b0b12fe70833e47960709"
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
