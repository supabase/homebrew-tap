class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.103.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.7/supabase_2.103.0-beta.7_darwin_arm64.tar.gz"
      sha256 "ed50ebd3e968818bcc63417367adc0b73c15275f2187e03f15aca64c304ed074"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.7/supabase_2.103.0-beta.7_darwin_amd64.tar.gz"
      sha256 "9c964f97eb516a24353aaae644bfd2e56890910de9c8dd3548301347e6922e0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.7/supabase_2.103.0-beta.7_linux_arm64.tar.gz"
      sha256 "6ad6257153dfcbc1c9de87b9cbf57a749fc0fe40204f8e5e718ed58700480a15"
    else
      url "https://github.com/supabase/cli/releases/download/v2.103.0-beta.7/supabase_2.103.0-beta.7_linux_amd64.tar.gz"
      sha256 "c077d25e626995c57136491094d86f0e93e2a859585243c64a5b61a2fde457d1"
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
