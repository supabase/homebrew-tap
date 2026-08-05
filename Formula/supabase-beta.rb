class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.112.0-beta.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.2/supabase_2.112.0-beta.2_darwin_arm64.tar.gz"
      sha256 "d42c989e025f8b1eec8caaf36e14d7385f6d2602baf853e485eb4582d4c93db4"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.2/supabase_2.112.0-beta.2_darwin_amd64.tar.gz"
      sha256 "1f08c646b3da6692dddd39c06d40baeb098b94a4b1b45a0f32a1085b6645a102"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.2/supabase_2.112.0-beta.2_linux_arm64.tar.gz"
      sha256 "b42b7f618ef8d8aa6646968d48f9afdea6784bce0d4c847ddf680240953b04e2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.112.0-beta.2/supabase_2.112.0-beta.2_linux_amd64.tar.gz"
      sha256 "c2f1a89230d91704b8f05ebbee4a71d40639250304e192430e8e30c771b8128d"
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
