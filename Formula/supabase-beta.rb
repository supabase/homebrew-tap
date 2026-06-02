class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.104.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.2/supabase_2.104.1-beta.2_darwin_arm64.tar.gz"
      sha256 "34bf72de185223d76d3cea7496cde3356d51585ddf9526d15a1d0482810ad74e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.2/supabase_2.104.1-beta.2_darwin_amd64.tar.gz"
      sha256 "7c7a81359391d7074e13197170a9a6ab2bbb82c65c1211e9cca5272d82df0614"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.2/supabase_2.104.1-beta.2_linux_arm64.tar.gz"
      sha256 "cc75a364d0ece340b375a8c2d0d5a8cc25d5efb0e47ee8ebb01f9acf9a1cc01f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.104.1-beta.2/supabase_2.104.1-beta.2_linux_amd64.tar.gz"
      sha256 "8d1dae4c1f5d1b14d00709392cf89778be0caaeb3d953bf8fda56f653a552383"
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
