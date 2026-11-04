class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.16/supabase_3.1.0-beta.16_darwin_arm64.tar.gz"
      sha256 "ffb76adca56415b59204f7bcfa426f8990d36cca3fb8522f38bd70c1bfae7be6"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.16/supabase_3.1.0-beta.16_darwin_amd64.tar.gz"
      sha256 "19d7e1cb3cb7a9aad548921754b36c4817f9cbf8c2b6d6c7a99caf8a3de175ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.16/supabase_3.1.0-beta.16_linux_arm64.tar.gz"
      sha256 "d15947ea6bbac53dd23e4d2641675cd8ed1084ed07826a1195203a8be4be0634"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.16/supabase_3.1.0-beta.16_linux_amd64.tar.gz"
      sha256 "ea364fed02a8c9d9da917b7f5b869adbaf8b7a434b752014afecf1ed8ccec832"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
