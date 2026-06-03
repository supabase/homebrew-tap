class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.6/supabase_2.105.0-beta.6_darwin_arm64.tar.gz"
      sha256 "7a6b28b22bc960edaa7b8428cbb0e4b4264d09ee4e967975de917e23d8326e49"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.6/supabase_2.105.0-beta.6_darwin_amd64.tar.gz"
      sha256 "3b9dd7d4b7a4e5b648b2d21d28f5eaefd85f85f38d8d92925d4771a6c7141084"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.6/supabase_2.105.0-beta.6_linux_arm64.tar.gz"
      sha256 "ad83ec6558d8bc99f346a4913d460928bf13ab49526770b5760dbe4d13e5d6c6"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.6/supabase_2.105.0-beta.6_linux_amd64.tar.gz"
      sha256 "b65521202bf4a8c4239bef36ac21206ef95db101bd8946911f59a650b16d6203"
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
