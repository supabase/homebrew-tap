class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_darwin_arm64.tar.gz"
      sha256 "4db5cc7c5fcd2d6725451bae682b499dc049ba4885900faa60e033639b92f92b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_darwin_amd64.tar.gz"
      sha256 "86e2eb3422a74e5d6c8b846a1a759d1c7d28e8273fb3d00b1843e62fd31daa8d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_linux_arm64.tar.gz"
      sha256 "b632db9d26db2f6c5b7869cfb71def7b367543cb0132734dc6280ea33ae8c42b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_linux_amd64.tar.gz"
      sha256 "a6e01fdaccf019665271452efcc63b1dcc9e9d3c4547509da4054b34c3e95c12"
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
