class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.105.0-beta.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.5/supabase_2.105.0-beta.5_darwin_arm64.tar.gz"
      sha256 "1cd8398a5d7fb45614cfa867698bd3ad549501c315ca06237cd4243fb8d18ebf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.5/supabase_2.105.0-beta.5_darwin_amd64.tar.gz"
      sha256 "d2608be187837f1c83ab0758fd38075eaed1f08c60a9aa58c31051f15a1d36fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.5/supabase_2.105.0-beta.5_linux_arm64.tar.gz"
      sha256 "369f9a4bd17f7e1b144764fe5802433bd1c9cd4d8a404641c89e061c3da8f8cf"
    else
      url "https://github.com/supabase/cli/releases/download/v2.105.0-beta.5/supabase_2.105.0-beta.5_linux_amd64.tar.gz"
      sha256 "5e4f51aa4a79a143d07f9bbb22c79b0020fd146e0731ca90b638be98914b7e76"
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
