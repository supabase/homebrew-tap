class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.17/supabase_3.1.0-beta.17_darwin_arm64.tar.gz"
      sha256 "fa3b44af4d174b1927db955a48ab0d2a688467875dcb6a5d1595a2b4fa5b5f95"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.17/supabase_3.1.0-beta.17_darwin_amd64.tar.gz"
      sha256 "b9e85b85946762f08807fa6912e62fdc529d4885b7c03ff15203154541e352c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.17/supabase_3.1.0-beta.17_linux_arm64.tar.gz"
      sha256 "2a90ef30fc5a763eab49b9041265a4faff7a2e2e7bd787ac5177aa60fd7fe23b"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.17/supabase_3.1.0-beta.17_linux_amd64.tar.gz"
      sha256 "f8f949828a5aded1a2d4effda4ad37fba9f247fd368af3c86728b4cc0dac39de"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
