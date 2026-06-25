class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.38/supabase_2.108.0-beta.38_darwin_arm64.tar.gz"
      sha256 "3f9b49bddd7929ae75c0dec851205ef4056a38f4bddcd888946f35f2e247c05b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.38/supabase_2.108.0-beta.38_darwin_amd64.tar.gz"
      sha256 "305d4c25d2165b3148c0b55d7b93c7d201b74fb9a030fbe7f84b1f061abce139"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.38/supabase_2.108.0-beta.38_linux_arm64.tar.gz"
      sha256 "a8a17da2c2059fdf297f275d3d678f6dd5ce4f1aa72806f86d2d4bd5f0997531"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.38/supabase_2.108.0-beta.38_linux_amd64.tar.gz"
      sha256 "db809160592ff9c46d9f63be7248b873694e3830b65b396ff9798463c3890c4c"
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
