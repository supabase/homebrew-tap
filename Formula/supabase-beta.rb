class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.1/supabase_2.104.1-beta.1_darwin_arm64.tar.gz"
      sha256 "15580ccb30a4740db63b1c463051f12ac403d213af3fd17e753b33ec99a5fe8f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.1/supabase_2.104.1-beta.1_darwin_amd64.tar.gz"
      sha256 "25d3a5aff747f0d1f370d51ce7cc1e3cb2ea9c57a12af0ca4327c6bec271a8ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.1/supabase_2.104.1-beta.1_linux_arm64.tar.gz"
      sha256 "7a826ed194c52a6ea50ea1f91b1de149bf65a89a81c131420ba2aaff1cd7604c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.1/supabase_2.104.1-beta.1_linux_amd64.tar.gz"
      sha256 "c67b109bbe5c76c8020324d616a55ecae943c820f7fc68ce29b33e898a8d9bee"
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
