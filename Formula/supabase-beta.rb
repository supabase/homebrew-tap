class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.8/supabase_2.116.0-beta.8_darwin_arm64.tar.gz"
      sha256 "5d782452301687a9bb28a373e7750f418c70c919207688c50d6d8b071341d3ef"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.8/supabase_2.116.0-beta.8_darwin_amd64.tar.gz"
      sha256 "453c941a2349079059e91d4d9abf8b8dac9939961860c5da5028388f09714419"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.8/supabase_2.116.0-beta.8_linux_arm64.tar.gz"
      sha256 "2660c2554027e3daa9d75894d829d15c168984a9870cd655f7749475a092ad9c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.8/supabase_2.116.0-beta.8_linux_amd64.tar.gz"
      sha256 "f43db9d9cc020224dcd9bfc9703daca465d503852803846ce367f53770346605"
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
