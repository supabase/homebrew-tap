class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.109.0-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.1/supabase_2.109.0-beta.1_darwin_arm64.tar.gz"
      sha256 "d04a731a4416172f4258837c824a539c435e26129eda5b90bf27b162d011963e"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.1/supabase_2.109.0-beta.1_darwin_amd64.tar.gz"
      sha256 "eb81cf5a2d759f25b5edaf598cf1426d541a8c345349dc0057ad715e1ae662f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.1/supabase_2.109.0-beta.1_linux_arm64.tar.gz"
      sha256 "9ef4f3f46f9d28bc1ef7d3a71affa3b972db2dba247a7096d0dcba5061203249"
    else
      url "https://github.com/supabase/cli/releases/download/v2.109.0-beta.1/supabase_2.109.0-beta.1_linux_amd64.tar.gz"
      sha256 "7b14f06839eddc4e070111b6e6c9d6b511ab9b3f6ebdaf790307ece8c88be8c2"
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
