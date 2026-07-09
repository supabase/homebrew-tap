class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.0-beta.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.20/supabase_2.110.0-beta.20_darwin_arm64.tar.gz"
      sha256 "45a00e5a82d15ec50b47801f165ecbf6cb210afd58e12d9643e2eec503161309"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.20/supabase_2.110.0-beta.20_darwin_amd64.tar.gz"
      sha256 "e0938c3e5ac74655d168365830ae816e4be58ef6185bf33f199dc118bbb29a71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.20/supabase_2.110.0-beta.20_linux_arm64.tar.gz"
      sha256 "6fcceb8ffc21cb1c53482de33d1a19446d9e71f715e48c3ed6d6acb9606701e4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.0-beta.20/supabase_2.110.0-beta.20_linux_amd64.tar.gz"
      sha256 "836fc5157886ab2a7e299c3d399120cccb6cc4d6e243e4f8def3bb323f4fdb6f"
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
