class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.116.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.9/supabase_2.116.0-beta.9_darwin_arm64.tar.gz"
      sha256 "a8a8a624ee84f9bf05454701c57e1f27f0ad5b469c027a961a5cacefadca3c16"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.9/supabase_2.116.0-beta.9_darwin_amd64.tar.gz"
      sha256 "767d562d1ff9e6a1427ecb7465b837a77062563de1b4c7962bd5971762424e05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.9/supabase_2.116.0-beta.9_linux_arm64.tar.gz"
      sha256 "7a5528065d43a924a3e3e439273439bbd13e3f7fb8b1d90007d14e345e1d311f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.116.0-beta.9/supabase_2.116.0-beta.9_linux_amd64.tar.gz"
      sha256 "22366fa511218d7006dde9dc5b22432b001a83ba80c6759be84142220c32f8a3"
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
