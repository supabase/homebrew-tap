class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.17/supabase_2.108.0-beta.17_darwin_arm64.tar.gz"
      sha256 "e5e7d508c4db082217a3258163bf6c32082985a3a3edd680fc8f98f4c8d953e8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.17/supabase_2.108.0-beta.17_darwin_amd64.tar.gz"
      sha256 "d7d64d54006519ec82d25803fd32e2d69d60ab8d841c89ae992f9b238a9c4f30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.17/supabase_2.108.0-beta.17_linux_arm64.tar.gz"
      sha256 "c7019f0cd690cc223066d67328a9cee4a1d279abe0871d25d73fd9c86e23e671"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.17/supabase_2.108.0-beta.17_linux_amd64.tar.gz"
      sha256 "7cb5066881bfbc149d70c3622c34274a93fc7a4fc766256805372057c49e3bc2"
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
