class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.15/supabase_2.108.0-beta.15_darwin_arm64.tar.gz"
      sha256 "742d85ca2e8250929850d3d8f0edfdf9e9fb759ff5b67339c3bc1ce53ee6798c"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.15/supabase_2.108.0-beta.15_darwin_amd64.tar.gz"
      sha256 "9501a8fb639b501dc4ea7335b8d1dc2e97503417023c1c4ebc30d3258a7f99f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.15/supabase_2.108.0-beta.15_linux_arm64.tar.gz"
      sha256 "fe45fb53d575c05bfb6841e6243160171d4428d7ff7a995e1ea7b659d4e857c7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.15/supabase_2.108.0-beta.15_linux_amd64.tar.gz"
      sha256 "c67637d83eefe937b17be1cd446cb9ba04cf891da1676a964265bf411a9473dc"
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
