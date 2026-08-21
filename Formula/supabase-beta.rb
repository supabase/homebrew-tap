class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.1-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.11/supabase_2.115.1-beta.11_darwin_arm64.tar.gz"
      sha256 "e042918cee4ae39c57440a9cf5854a1940d17260a50d5c4a54fec0d295d2d889"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.11/supabase_2.115.1-beta.11_darwin_amd64.tar.gz"
      sha256 "4d0fbb1e4ee8a454955029963c53f1628ad7947b354685eefc46a45ce6bf57e9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.11/supabase_2.115.1-beta.11_linux_arm64.tar.gz"
      sha256 "b1b0dcd83638fbbcddf38e3cb54bb3091d87c2bf47d73ccf9ca83419788d6710"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.1-beta.11/supabase_2.115.1-beta.11_linux_amd64.tar.gz"
      sha256 "9d9ce1ffee6df8220e2be827fec6533756a1d73574712e59937fc4f60fa4431d"
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
