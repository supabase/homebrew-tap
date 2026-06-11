class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.106.0-beta.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.27/supabase_2.106.0-beta.27_darwin_arm64.tar.gz"
      sha256 "7141ed87564098d87a498a7ea097d03e977379378a97f67a3b0fa6d85ad5eb3b"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.27/supabase_2.106.0-beta.27_darwin_amd64.tar.gz"
      sha256 "c1914280ea70edaebc41441451b6d8627534b80a9795b00a08854a0dbb28536d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.27/supabase_2.106.0-beta.27_linux_arm64.tar.gz"
      sha256 "0d7003edced8b4ddcf0f51718af371f61894e0765d8e3ff3f6b8a5abe378a046"
    else
      url "https://github.com/supabase/cli/releases/download/v2.106.0-beta.27/supabase_2.106.0-beta.27_linux_amd64.tar.gz"
      sha256 "eb66e65b6e72f6df89c31c3a5dd1a4797abe009cc3f6575adadc65f446a5fe6c"
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
