class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.23/supabase_3.1.0-beta.23_darwin_arm64.tar.gz"
      sha256 "b3a5150126108c46d4ad3cd40d96b8505decffd864e03afcc82bd44571512be5"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.23/supabase_3.1.0-beta.23_darwin_amd64.tar.gz"
      sha256 "95bb1a50a113811bed9f50f4c4ea9249b3e10879707122be2365e0ac03ab7d68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.23/supabase_3.1.0-beta.23_linux_arm64.tar.gz"
      sha256 "3b513bc135f664bd31d628f180ee769e5dbf93236bcfa1e9c395c3d14a0408e9"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.23/supabase_3.1.0-beta.23_linux_amd64.tar.gz"
      sha256 "c86d1d7ee07399d2a5df2108743d1fce7399a5534949ac23d0ca7b74e0219ad5"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
