class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.11/supabase_3.3.0-beta.11_darwin_arm64.tar.gz"
      sha256 "6745faeb11f0721a9438b14134bc48fe695eff6b019de5cf3e1fd3738224227f"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.11/supabase_3.3.0-beta.11_darwin_amd64.tar.gz"
      sha256 "f667fdb3ac4c7ce66d5827824e19c8a4806c2ca2899d3c5fff5601467158cebb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.11/supabase_3.3.0-beta.11_linux_arm64.tar.gz"
      sha256 "f5adb25d620e53c2fc4d58c0ee01ba75c3606ac774aa94a6087903514527b12e"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.11/supabase_3.3.0-beta.11_linux_amd64.tar.gz"
      sha256 "28a003880fe0d4473b70cd321ea6746bd44c8c423bcdf27292849f2df1dfcccb"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
