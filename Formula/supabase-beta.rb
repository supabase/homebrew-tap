class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.6/supabase_2.102.0-beta.6_darwin_arm64.tar.gz"
      sha256 "db33fb7f1e3115ea897484cec668c9762ca91f84ae8079505e29cd8baaf6c2f3"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.6/supabase_2.102.0-beta.6_darwin_amd64.tar.gz"
      sha256 "ba61b948da8f37c2425b7678cc5064396efcb0c837e0eefa098a94a2bbcf66a2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.6/supabase_2.102.0-beta.6_linux_arm64.tar.gz"
      sha256 "62a72fcf717058b0e7b554eb43c13efa54d5c52fc273c83bbd49e2f262c34338"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.6/supabase_2.102.0-beta.6_linux_amd64.tar.gz"
      sha256 "60f1fed25ee3f5c4083ad2d0fa5223689d22d7aa1de99eb00024766e5c5dca9f"
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
