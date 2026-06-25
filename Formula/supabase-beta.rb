class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.39/supabase_2.108.0-beta.39_darwin_arm64.tar.gz"
      sha256 "47f1408fca70ca11efb792c61a317aab7f65430149f603a172d0eaa41db048c3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.39/supabase_2.108.0-beta.39_darwin_amd64.tar.gz"
      sha256 "78acb07ccebd3f6bc3784e46d6b59b6b818ec3fb1832f755bb9fc072a0eeaec2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.39/supabase_2.108.0-beta.39_linux_arm64.tar.gz"
      sha256 "05291d18f08994bc4f28b7a38b63d6979154e344c2320fa120321b631ea293bf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.39/supabase_2.108.0-beta.39_linux_amd64.tar.gz"
      sha256 "cb0c9f20e4c2c1d254bed87eaf318c82a001882bdd426dce187d3ee150bbcd83"
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
