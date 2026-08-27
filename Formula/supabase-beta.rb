class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.4/supabase_2.117.0-beta.4_darwin_arm64.tar.gz"
      sha256 "6606b3220c240bd5c1c930341f6c4785e05c3b8661fb189e9ebbf008b29a09eb"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.4/supabase_2.117.0-beta.4_darwin_amd64.tar.gz"
      sha256 "8e9b0ba3abaf2af6a8976304ac65df859d5acde54455ce030900a31dbb293efe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.4/supabase_2.117.0-beta.4_linux_arm64.tar.gz"
      sha256 "3eb4d2e42aa5423c1d4cb500362a3a895cb66f332c447ad220db2c70dc7eec27"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.4/supabase_2.117.0-beta.4_linux_amd64.tar.gz"
      sha256 "c8a9999d00c6e1fbcaf0b04e8ce631e2f09ae640986e514e6aa57f9d56d317d3"
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
