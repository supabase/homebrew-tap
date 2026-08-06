class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.7/supabase_2.112.0-beta.7_darwin_arm64.tar.gz"
      sha256 "509d2422e85df7ef52937f2bf75c8583d3646ac7c4873b8c323adb470f4aa8fe"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.7/supabase_2.112.0-beta.7_darwin_amd64.tar.gz"
      sha256 "4a9daad917de201d30208e049599f7669fe5709ecf4210477e2754b79c108531"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.7/supabase_2.112.0-beta.7_linux_arm64.tar.gz"
      sha256 "aa0cb7bbaf6f4d5feff34fc1591efc7fd387ab6d1d4630ad77fb6690f0fca212"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.7/supabase_2.112.0-beta.7_linux_amd64.tar.gz"
      sha256 "05d326e903faa8476f75ac281647f7d9c99aa33f8b56988b60f619d879c04fbc"
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
