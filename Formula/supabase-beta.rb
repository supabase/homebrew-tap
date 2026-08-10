class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.114.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.4/supabase_2.114.0-beta.4_darwin_arm64.tar.gz"
      sha256 "fab184e8d3243709a87cec04f359a4147a6771e71286def21693a05136c3fd03"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.4/supabase_2.114.0-beta.4_darwin_amd64.tar.gz"
      sha256 "52009bef90efa25b9fb76700987c04027a7ab71a971dcfea98494b3a09247e93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.4/supabase_2.114.0-beta.4_linux_arm64.tar.gz"
      sha256 "04ccbc15d1ced1134d360dd68c6652a8fbd2401acc8f4d41ad524d773ae7e866"
    else
      url "https://github.com/supabase/cli/releases/download/v2.114.0-beta.4/supabase_2.114.0-beta.4_linux_amd64.tar.gz"
      sha256 "c996bc8850ee4078e7bc74206e918d840b82bad89467a2adef840585729f4a2e"
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
