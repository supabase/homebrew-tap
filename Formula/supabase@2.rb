class SupabaseAT2 < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.122.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.122.1/supabase_2.122.1_darwin_arm64.tar.gz"
      sha256 "e97582f76237d1dd4cb27f5051e8a98587733f98837d43d74d2e3330436d7c79"
    else
      url "https://github.com/supabase/cli/releases/download/v2.122.1/supabase_2.122.1_darwin_amd64.tar.gz"
      sha256 "7f66e9752148698def07ff784f804ee9e0cf1926da4894c5fd646790f07aeeeb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.122.1/supabase_2.122.1_linux_arm64.tar.gz"
      sha256 "f672614c2cb876b37d63a28d9ab4442406cdcae9843e15ddc7a4a1538785b30f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.122.1/supabase_2.122.1_linux_amd64.tar.gz"
      sha256 "3e54b98e5ead7be0a3b0753526833d4cc9a55304e4d57da0d72f1efc342738ea"
    end
  end

  conflicts_with "supabase", because: "both install a `supabase` binary"

  def install
    bin.install "supabase"
    bin.install "supabase-go" if File.exist?("supabase-go")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
