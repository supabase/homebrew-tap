class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.37/supabase_2.108.0-beta.37_darwin_arm64.tar.gz"
      sha256 "6029c5779a8d272ab28d03e07afc1b065510c946432a533e7070a2af15160d3a"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.37/supabase_2.108.0-beta.37_darwin_amd64.tar.gz"
      sha256 "40ed4e9044f6a8b55dd637f728453565d4dcfd1cc77b0279b347ff5103b31788"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.37/supabase_2.108.0-beta.37_linux_arm64.tar.gz"
      sha256 "6bdc84a416d3d3b3a36e21faf07ac09457abbf40440046fdbcf67cf2cf7a67b9"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.37/supabase_2.108.0-beta.37_linux_amd64.tar.gz"
      sha256 "760cf13e834296ee89b8e50f27dbcdb08753fdbc8be51af922bf57659b0c9572"
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
