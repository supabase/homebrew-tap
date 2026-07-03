class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.12/supabase_2.109.1-beta.12_darwin_arm64.tar.gz"
      sha256 "34d858c185a3008dbb5556fb20db9c62251cc18f81d1759786da2d598fdfa528"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.12/supabase_2.109.1-beta.12_darwin_amd64.tar.gz"
      sha256 "62e03913342d0c4bde4ecc0e4bef87b84cad1799e5fc97c79bbd604f62b26806"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.12/supabase_2.109.1-beta.12_linux_arm64.tar.gz"
      sha256 "d1e4c46114bbf992e5825e3653d1b8c50e52183850dcb7e91d618f34e02a7e1c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1-beta.12/supabase_2.109.1-beta.12_linux_amd64.tar.gz"
      sha256 "b7de326163f0af4111f665440f6e09f6b946bf8e43b8dda431de845917b9e613"
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
