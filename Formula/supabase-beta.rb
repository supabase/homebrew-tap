class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.99.1-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.2/supabase_2.99.1-beta.2_darwin_arm64.tar.gz"
      sha256 "68953d9011a045fca66bc25f444230c4e3bb3cd60cbeef86a877f6918e0e7c03"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.2/supabase_2.99.1-beta.2_darwin_amd64.tar.gz"
      sha256 "c2b32009de5edff38cf9f5f841532dd80c8fd8fb495464dc58beffd63a955407"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.2/supabase_2.99.1-beta.2_linux_arm64.tar.gz"
      sha256 "3aec7e9af5b4422717256c7958b9a553f8388d1a528b6e3046fcb5c621fdf5d5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.99.1-beta.2/supabase_2.99.1-beta.2_linux_amd64.tar.gz"
      sha256 "a816e44f145ca6af9388f9a400983ec46b6cc305c3ed6de780b38bee85bdbb57"
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
