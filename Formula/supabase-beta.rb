class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.4/supabase_2.106.0-beta.4_darwin_arm64.tar.gz"
      sha256 "aa160a59522fa3327fdbc1762ad334882fc4ab8f7a34dce0e8a2cb46dd6f077d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.4/supabase_2.106.0-beta.4_darwin_amd64.tar.gz"
      sha256 "f0fc9b07a2b99b22544adecb77c08c8dfdc2e62cf0fa761dec4c5c4f1f6c5bed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.4/supabase_2.106.0-beta.4_linux_arm64.tar.gz"
      sha256 "efea0a0d76ad48e00215e7f85ea655408cffaa98e398b7ac28637685c446d172"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.4/supabase_2.106.0-beta.4_linux_amd64.tar.gz"
      sha256 "5c058a3ffd4277b351aa9318ba96daac0cbcaa62d32c68b7a0f82801a39231f0"
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
