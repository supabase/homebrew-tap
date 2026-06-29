class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.8/supabase_2.109.0-beta.8_darwin_arm64.tar.gz"
      sha256 "cae3bb750cbc4daf03bddc21852d13d55861ff48a633768ee831d2a49cb5c03b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.8/supabase_2.109.0-beta.8_darwin_amd64.tar.gz"
      sha256 "cb266a6c3eccc996b7235a4966b45bbefc4921d2226372f9778f213484946912"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.8/supabase_2.109.0-beta.8_linux_arm64.tar.gz"
      sha256 "dfce2e98c66b352a98149bf92a40e4e47db92480fdcd363b1a16a90cd7e14b49"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.8/supabase_2.109.0-beta.8_linux_amd64.tar.gz"
      sha256 "504178ef43bb9c4c86d00189fb420720933eafa0b8e4f2fc8b6855169ec6c802"
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
