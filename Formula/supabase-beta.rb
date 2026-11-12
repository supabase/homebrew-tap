class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.7/supabase_3.2.0-beta.7_darwin_arm64.tar.gz"
      sha256 "b0e4233647e816785a73c6334a6364e76c7a088ca1ea5abf01da8921e1608a8b"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.7/supabase_3.2.0-beta.7_darwin_amd64.tar.gz"
      sha256 "701d3ffe406bfd2c00f1efb5e8d2335e4d6597081807bdef09db87c4395fc90a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.7/supabase_3.2.0-beta.7_linux_arm64.tar.gz"
      sha256 "42c018541785d61ccc2bdb74cfad4b73c8f793bd9e73604d58cd21787d05fd26"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.7/supabase_3.2.0-beta.7_linux_amd64.tar.gz"
      sha256 "c611e9b202a917e70cce9e7f025bf36c1118fb7d69b77fc578b6f0dd1794e7be"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
