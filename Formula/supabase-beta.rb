class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.2-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.1/supabase_2.100.2-beta.1_darwin_arm64.tar.gz"
      sha256 "49361557947fa4745b255be7570c0e5ccb61aeafc6d966da8ce81495c93fc150"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.1/supabase_2.100.2-beta.1_darwin_amd64.tar.gz"
      sha256 "be86c438702f80dc3d2869a945e2b847aa56501827149eec2cf5188a2fbe3243"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.1/supabase_2.100.2-beta.1_linux_arm64.tar.gz"
      sha256 "aafa7897a20184782b07785ec50dd6ae2aa9c8f8ae7c94ee0fd6d90b288666ea"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.1/supabase_2.100.2-beta.1_linux_amd64.tar.gz"
      sha256 "08187c2422072f50d3a8613e158ed92be9d0366fbb34c0bc87d425d8934593ff"
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
