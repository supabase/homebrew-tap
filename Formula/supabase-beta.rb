class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.12/supabase_3.1.0-beta.12_darwin_arm64.tar.gz"
      sha256 "3085fa7ea45e289cc02fad47dd329c1cf9879bd71e2869dabcb8979ae3963afd"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.12/supabase_3.1.0-beta.12_darwin_amd64.tar.gz"
      sha256 "f554364af9c5aa5d4dee5f038ee8272471b95bfc7c664b7579053d4d44f9dfcb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.12/supabase_3.1.0-beta.12_linux_arm64.tar.gz"
      sha256 "2e1b57021ce723454d8160e6c458fa22759baf4f2eded17222dba73e46238c3a"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.12/supabase_3.1.0-beta.12_linux_amd64.tar.gz"
      sha256 "890051763db0b947dd22e9082019da6d2efd68670b745f8ea295b88e3c4bd53f"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
