class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.22/supabase_2.115.0-beta.22_darwin_arm64.tar.gz"
      sha256 "b60c3f210817a488853ac510d8c4b490590554e47a5cdd91bf20b6866cd8736f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.22/supabase_2.115.0-beta.22_darwin_amd64.tar.gz"
      sha256 "debeb3685ff34cd8d0ba92f77d06b7b13c945419063e3fb3bdeaea0efe2c22e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.22/supabase_2.115.0-beta.22_linux_arm64.tar.gz"
      sha256 "2f20e38105e25fb4411591fab793417f9fef7f681bdb568a5674c8374519635e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.22/supabase_2.115.0-beta.22_linux_amd64.tar.gz"
      sha256 "6788e632c96ff037ca5aed4c5ae288543edb1e031e412db56a4b6e7f0af85e63"
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
