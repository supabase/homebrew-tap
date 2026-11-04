class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.13/supabase_3.1.0-beta.13_darwin_arm64.tar.gz"
      sha256 "3a413af7af9f886320670022562337c3c38af37d03eac50281aa0bcb1a96240c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.13/supabase_3.1.0-beta.13_darwin_amd64.tar.gz"
      sha256 "56f2e77936beb0ff74289b482747f71244465e41bae64170d28d5fcbe6486f62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.13/supabase_3.1.0-beta.13_linux_arm64.tar.gz"
      sha256 "efee940c38cad20e0447da601c7833c1b5941e292854503186afb56ea062d7bd"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.13/supabase_3.1.0-beta.13_linux_amd64.tar.gz"
      sha256 "00938248e78937405ea034947920f5cb206adc1ca281888f222846f52169f0ae"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
