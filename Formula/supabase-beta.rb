class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.107.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.22/supabase_2.107.0-beta.22_darwin_arm64.tar.gz"
      sha256 "d0561519576f37ff74bbe34a72b6c738ef107c1cda47c92151374e98a412d6ff"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.22/supabase_2.107.0-beta.22_darwin_amd64.tar.gz"
      sha256 "8c2461ce971c4ba70b9bcf21b17e945588c47379529ba0ca12c584860d935a7e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.22/supabase_2.107.0-beta.22_linux_arm64.tar.gz"
      sha256 "7dd778b74e8a2dc382fb392754ad2a77573c2cbdc554bfff51f3dea339c4d040"
    else
      url "https://github.com/supabase/cli/releases/download/v2.107.0-beta.22/supabase_2.107.0-beta.22_linux_amd64.tar.gz"
      sha256 "8ba786d3c7a0375c185601b64ae44afae1fa6478ff58ec518e1a6b9f2987a995"
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
