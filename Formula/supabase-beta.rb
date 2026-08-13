class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.115.0-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.4/supabase_2.115.0-beta.4_darwin_arm64.tar.gz"
      sha256 "8e1f3c79394bdfe0dc661860903d0514e9af63a9c9866c6a14475ff2349af1a0"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.4/supabase_2.115.0-beta.4_darwin_amd64.tar.gz"
      sha256 "9b0b4dc3a323880e11ddf5449963d91d3783a3687b83faeab46a78ebb8df02ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.4/supabase_2.115.0-beta.4_linux_arm64.tar.gz"
      sha256 "950f1de5a8be8611df4c655473e08e1991b1015696bedc4b963c28f69367df29"
    else
      url "https://github.com/supabase/cli/releases/download/v2.115.0-beta.4/supabase_2.115.0-beta.4_linux_amd64.tar.gz"
      sha256 "bed2b21af20b454154ce78cbbe4ea062f8e7fb96a100ef16138bc4d124816673"
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
