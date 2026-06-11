class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.24/supabase_2.106.0-beta.24_darwin_arm64.tar.gz"
      sha256 "cd17d8638599525fcd4c56aef79e1b50d17b675a47cdf851efaadc550d11d293"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.24/supabase_2.106.0-beta.24_darwin_amd64.tar.gz"
      sha256 "09fd7808eafb9f897544caf0310e7a1f43c9c7fcfe44b0885ea656af802a7187"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.24/supabase_2.106.0-beta.24_linux_arm64.tar.gz"
      sha256 "242feb4136c30cd59291ed95e82c9ae21207e68a055105e9a9712c9929854c03"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.24/supabase_2.106.0-beta.24_linux_amd64.tar.gz"
      sha256 "fff7615b4669de03b80c2a43ae43a2063a3f1dba04698d0ade6567359fdd93eb"
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
