class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.110.1-beta.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.3/supabase_2.110.1-beta.3_darwin_arm64.tar.gz"
      sha256 "52013dd01da192ac8464cc11879fcedd820eb59e74a17ac9257b60175d79d20c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.3/supabase_2.110.1-beta.3_darwin_amd64.tar.gz"
      sha256 "b1751e7d18d5e2673822ecf826513a8996d1ca0ce0377c4d9c5be3f384ab2d08"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.3/supabase_2.110.1-beta.3_linux_arm64.tar.gz"
      sha256 "f250aa15cc0f881396280bcce7ddf6d3914c1b80e299847e93af37a9e2bcfc41"
    else
      url "https://github.com/supabase/cli/releases/download/v2.110.1-beta.3/supabase_2.110.1-beta.3_linux_amd64.tar.gz"
      sha256 "90f9b5d76b304c2f9cdc0a75b0152430830ed50c490601984c082fe6fc788b8b"
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
