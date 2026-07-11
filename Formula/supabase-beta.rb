class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.26/supabase_2.110.0-beta.26_darwin_arm64.tar.gz"
      sha256 "b35e70c9f3ef2b362efeb585f30ee4ceb7909a3e0933045e0ecfb1420aab75c9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.26/supabase_2.110.0-beta.26_darwin_amd64.tar.gz"
      sha256 "c684876f1b092394a83b85550fbfe5d5d4ac64848cb620e6ffdc1c00176c10e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.26/supabase_2.110.0-beta.26_linux_arm64.tar.gz"
      sha256 "718f49ce8ea94a4cb7fe1bbe0eeba01abed154eee57f4c7b9d048d828b784878"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.26/supabase_2.110.0-beta.26_linux_amd64.tar.gz"
      sha256 "dc80353fc9a372477c16495d8e9b42b80a23b2341b3938d7e988730b3574caaf"
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
