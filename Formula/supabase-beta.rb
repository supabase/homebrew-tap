class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.1-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.1/supabase_2.114.1-beta.1_darwin_arm64.tar.gz"
      sha256 "36c0cc3f87e1645402c271bee7febd49405d69e4e921039671d01a225944be09"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.1/supabase_2.114.1-beta.1_darwin_amd64.tar.gz"
      sha256 "bbf5ce24a09aca5e73156edd8d8f93b630670a8056cb70c10fbc4e2fbba758ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.1/supabase_2.114.1-beta.1_linux_arm64.tar.gz"
      sha256 "17560957923ef961ca62ab3f332ef22c9585189d866f6aacde2c0ab6d5839728"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.1-beta.1/supabase_2.114.1-beta.1_linux_amd64.tar.gz"
      sha256 "7c6d6d3d6624fba8665077dd31e0c442e0ec56aa457307ad346a499f99000bd5"
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
