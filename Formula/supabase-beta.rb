class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.111.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.7/supabase_2.111.0-beta.7_darwin_arm64.tar.gz"
      sha256 "79d39480b4547ce1bb29d09b33385534c394beb6fe1ec862a6b156e06aa90e4f"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.7/supabase_2.111.0-beta.7_darwin_amd64.tar.gz"
      sha256 "1310a969f0d9cd09b2d842c09526e194cd78baf6841e2f230559e5d4fc207d30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.7/supabase_2.111.0-beta.7_linux_arm64.tar.gz"
      sha256 "c723ebbbbee1f2ce5f92b6d46a8a17ef131f4e057efebcb718bab1f3dac6a4ac"
    else
      url "https://github.com/supabase/cli/releases/download/v2.111.0-beta.7/supabase_2.111.0-beta.7_linux_amd64.tar.gz"
      sha256 "4ce863afc70dc6e9752d902d3e2869be2f74a88ff5e9d72e0c234fe0bfb3bf64"
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
