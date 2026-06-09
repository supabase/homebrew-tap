class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.15/supabase_2.106.0-beta.15_darwin_arm64.tar.gz"
      sha256 "37e6bfc6d840d8dd9bba4f0707e9a021f774904fc2a750a56990bbab64b87487"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.15/supabase_2.106.0-beta.15_darwin_amd64.tar.gz"
      sha256 "7c97ec73bbfd8d60d34fc19d37150899d7835fd708282fc9dc971ee62d33601d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.15/supabase_2.106.0-beta.15_linux_arm64.tar.gz"
      sha256 "ddead0b3111eb3333c0192d6e8db0512d11a0728af9303d3815e0edc81fef253"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.15/supabase_2.106.0-beta.15_linux_amd64.tar.gz"
      sha256 "bd88318c62399960d3dd7b1df13adac3ab262d4a3943c18594f74d379fc80d61"
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
