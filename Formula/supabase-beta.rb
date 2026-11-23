class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.3.0-beta.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.18/supabase_3.3.0-beta.18_darwin_arm64.tar.gz"
      sha256 "d2e276d90833193d209b2ee814a97a87c7adc521951346566d01a4b14ba97973"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.18/supabase_3.3.0-beta.18_darwin_amd64.tar.gz"
      sha256 "036a6ed1acef623436f93f9f84da35fb9a7d9b0f5d2ca9aee3c69a18d55e5127"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.18/supabase_3.3.0-beta.18_linux_arm64.tar.gz"
      sha256 "89a9f62d422c7cb362afecba42d45297dab50a12933699d9050fbf6fcf943258"
    else
      url "https://github.com/supabase/cli/releases/download/v3.3.0-beta.18/supabase_3.3.0-beta.18_linux_amd64.tar.gz"
      sha256 "191ba9d57be3358020a6d8c3e2524284f4f8358f125211c104dcf0e843d9e208"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
