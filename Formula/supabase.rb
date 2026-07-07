class Supabase < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1/supabase_2.109.1_darwin_arm64.tar.gz"
      sha256 "e36776717a56d704769229649349b3a382f413cb31f1fb2ba4647ef8bcf7339b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1/supabase_2.109.1_darwin_amd64.tar.gz"
      sha256 "fee962ecf455c69497f93c19b369443b114a934161b8cecbd8a5b812c3c8c013"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.1/supabase_2.109.1_linux_arm64.tar.gz"
      sha256 "a7f7c771acd3a2a13938b5832029beb24787b165d5119ed57ad6e964f3593291"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.1/supabase_2.109.1_linux_amd64.tar.gz"
      sha256 "36d87b7fe6b4bcfe89ac47a4354e526cff22480224de426d7b370f6934556976"
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
