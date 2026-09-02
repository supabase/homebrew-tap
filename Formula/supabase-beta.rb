class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.0.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.8/supabase_3.0.0-beta.8_darwin_arm64.tar.gz"
      sha256 "c47d3fdf3ed4fd604da13ac39adf4a272a2fddd007bd39a4f8d83039851fcd11"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.8/supabase_3.0.0-beta.8_darwin_amd64.tar.gz"
      sha256 "be3153a1d96e6f9c773bfaf1ac32accbe9fe86a88e65930e5514d6842a366bdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.8/supabase_3.0.0-beta.8_linux_arm64.tar.gz"
      sha256 "9adf82ad8af2720a2efaa70c721afe309a3ff5abdb8c71a6a2fb9c04a8e17fe5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.0.0-beta.8/supabase_3.0.0-beta.8_linux_amd64.tar.gz"
      sha256 "d2163e671398a320d543de4fc3c06bdb2f7d7258f7755d06d5be7eb2575cc167"
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
