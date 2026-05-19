class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.1-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.6/supabase_2.100.1-beta.6_darwin_arm64.tar.gz"
      sha256 "55e7585b97040832fd6ca208a275c7fb63afb13039f2e46effaf756917c98a07"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.6/supabase_2.100.1-beta.6_darwin_amd64.tar.gz"
      sha256 "49f31ca156926a82c8beabc1e6105d81ce9192b3dd63249e0a3afc75c6dc6f24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.6/supabase_2.100.1-beta.6_linux_arm64.tar.gz"
      sha256 "f364b50763703dbb293dae4d89cbd10ce5a20c270910dc3e70235b63aeab12f7"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.1-beta.6/supabase_2.100.1-beta.6_linux_amd64.tar.gz"
      sha256 "957e660fce02a60fb929a9b89db51f5826bfa1e9bdb24366680f2f4c4a6311f5"
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
