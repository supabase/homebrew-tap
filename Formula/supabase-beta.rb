class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.4/supabase_3.3.0-beta.4_darwin_arm64.tar.gz"
      sha256 "bb29ceb3161d554f28da2d083351689e5b451cdf3e15b450b57fbb7438768779"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.4/supabase_3.3.0-beta.4_darwin_amd64.tar.gz"
      sha256 "54fff7d7ac44fba4ebfc4a47157d07dfe8a4833c744bf1ee0f5f1edf8586b362"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.4/supabase_3.3.0-beta.4_linux_arm64.tar.gz"
      sha256 "1551ab56485ee139af40ab36f3a29398ed7c4592ef1a9f3f8ed131501b1cf359"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.4/supabase_3.3.0-beta.4_linux_amd64.tar.gz"
      sha256 "f444f81b470b1ba7a3c4f4f78c2f31ef40fb976a1b7870fc75bf8f83282d9a8c"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
