class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.8/supabase_2.99.0-beta.8_darwin_arm64.tar.gz"
      sha256 "efee1461fb7863b5e3dfe673c4885c9048dc84713d8f4b8cf5aaf33236951d72"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.8/supabase_2.99.0-beta.8_darwin_amd64.tar.gz"
      sha256 "1aa400b8055827bf5a047ecff28bb0f5cc9e2772187de9118b2342adfe4d6320"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.8/supabase_2.99.0-beta.8_linux_arm64.tar.gz"
      sha256 "87ca610861b8b2de00b65fcf239a4bafa1a9d6275947db91748f151f4161ad4f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.8/supabase_2.99.0-beta.8_linux_amd64.tar.gz"
      sha256 "1e418eea3919c8925bd1f88de2e6c43d408dab38d2aa161e2d93a61bf5c0ae10"
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
