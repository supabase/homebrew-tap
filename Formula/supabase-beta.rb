class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.9/supabase_2.105.0-beta.9_darwin_arm64.tar.gz"
      sha256 "ed0a320c3bab3590e0daec8ae04058d06c761cae9bf1a7019934100e3bed3bf4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.9/supabase_2.105.0-beta.9_darwin_amd64.tar.gz"
      sha256 "61a7b0212ab312111e65218a76673d1aa8727ef36a22ba9435c556189c220698"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.9/supabase_2.105.0-beta.9_linux_arm64.tar.gz"
      sha256 "2ff455a8f8673cf492d23780c4fda9358ef77681f6f5830a5caa83661d05423d"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.9/supabase_2.105.0-beta.9_linux_amd64.tar.gz"
      sha256 "5b56c9954c871bdeea581c6562266a0ab4b2ff6b171b26c6b8f82e8cc094b06c"
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
