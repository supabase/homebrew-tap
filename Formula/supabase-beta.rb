class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.4/supabase_2.111.0-beta.4_darwin_arm64.tar.gz"
      sha256 "bb33232ae0359609d126f4cc71178a2c1d376fc3536d9813b0cc20b8207ededf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.4/supabase_2.111.0-beta.4_darwin_amd64.tar.gz"
      sha256 "3b0f97af794c9e708820cde95dd8eea3e4b130ec6e867419510afc895526df80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.4/supabase_2.111.0-beta.4_linux_arm64.tar.gz"
      sha256 "ec224371561717236edd1ffea8b179a65f081208435abe7662d95e2c0556d845"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.4/supabase_2.111.0-beta.4_linux_amd64.tar.gz"
      sha256 "d2af9110551d37bc1f221b968b3c7125cc4b2e0b76055a530a1d5b22aad6fa40"
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
