class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.117.0-beta.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.7/supabase_2.117.0-beta.7_darwin_arm64.tar.gz"
      sha256 "caf2650faee157ada2bd2a5ecbb3d114c0d7bdb6e8757c4f87113a684b820d02"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.7/supabase_2.117.0-beta.7_darwin_amd64.tar.gz"
      sha256 "45968256ac17ccb9f25fcae1350a4f7d8c3353ce9067f8dc4485bba1ac48753b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.7/supabase_2.117.0-beta.7_linux_arm64.tar.gz"
      sha256 "f1916041e198039c5d40fe302ebfae58df9f638f940d160312a032f1f80b5381"
    else
      url "https://github.com/supabase/cli/releases/download/v2.117.0-beta.7/supabase_2.117.0-beta.7_linux_amd64.tar.gz"
      sha256 "4add36de176a4e0a3239df98b7a5b8e2ab209fdf3af83646b468878c730cc6c9"
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
