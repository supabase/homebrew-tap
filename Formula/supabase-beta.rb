class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_darwin_arm64.tar.gz"
      sha256 "bb9c4f34b922eeb5b36c47160f93532b268e606522c04c0dfd5251f37d1c855c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_darwin_amd64.tar.gz"
      sha256 "ff8d28f8b806ac6c297d3de9678257c873b2321406c69a15e17677214759d6fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_linux_arm64.tar.gz"
      sha256 "cb968e21d9a8a75e973875edf8cfc1ebdec073753b34120e8902a203cb090b4c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.0-beta.1/supabase_2.99.0-beta.1_linux_amd64.tar.gz"
      sha256 "2122d64f50667712e20b7166ec2ffff106c1c7ce66e26cd522ab424a621c7ae1"
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
