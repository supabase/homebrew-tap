class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.108.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.2/supabase_2.108.0-beta.2_darwin_arm64.tar.gz"
      sha256 "2e2aa33bac46f241a1781707b5c3f2a0269c21e87beca3f965b7e89beedf13d5"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.2/supabase_2.108.0-beta.2_darwin_amd64.tar.gz"
      sha256 "99020a096032b3ed615a8629cec37240d1f04ddf8d4544620388c61673421197"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.2/supabase_2.108.0-beta.2_linux_arm64.tar.gz"
      sha256 "84863988006dd211bdb5917b8fdba3c22f062ed69e96f6bac7a5275951b2c694"
    else
      url "https://github.com/supabase/cli/releases/download/v2.108.0-beta.2/supabase_2.108.0-beta.2_linux_amd64.tar.gz"
      sha256 "88cbe41175070471d1cd80518247eaeb02858b85ed872df5d7c04e428044f45d"
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
