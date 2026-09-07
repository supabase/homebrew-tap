class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.25/supabase_2.117.0-beta.25_darwin_arm64.tar.gz"
      sha256 "4e8bec4b36cdbe10b003fcde9b76708a9c49877014a9a82864d811d9d28c4a87"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.25/supabase_2.117.0-beta.25_darwin_amd64.tar.gz"
      sha256 "54b5787503d4fb1a36878f1c4a4263113104cba14db6aa8d0f811f7ef6f56a7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.25/supabase_2.117.0-beta.25_linux_arm64.tar.gz"
      sha256 "390a06de5aae13f9a49118d3615f64318fe5b24ecf55be2308832247be306c90"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.25/supabase_2.117.0-beta.25_linux_amd64.tar.gz"
      sha256 "9dab88cc955ba00e1e343aea48256633edf4e63fdb0fb3e669f12d333b66f58a"
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
