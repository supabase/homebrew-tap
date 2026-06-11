class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.25/supabase_2.106.0-beta.25_darwin_arm64.tar.gz"
      sha256 "1c29d01e8eb4c1796d706f54959774bcbb4973264492886d6dd41b349d9b14f0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.25/supabase_2.106.0-beta.25_darwin_amd64.tar.gz"
      sha256 "4b66ade4a769f5d521e66652ed2af8e0b1110ebd55b8cededb72918e685b8cbd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.25/supabase_2.106.0-beta.25_linux_arm64.tar.gz"
      sha256 "91f0dc046310ff90a8e30e5b30c8ae943c714e4b74df3fae21033dfff13a50b5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.25/supabase_2.106.0-beta.25_linux_amd64.tar.gz"
      sha256 "cc86a4f1ee33d7eb8b76416eb851715d01c1f54f56fbb82aa2c1c41c225e4d50"
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
