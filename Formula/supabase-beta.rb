class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.102.0-beta.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.14/supabase_2.102.0-beta.14_darwin_arm64.tar.gz"
      sha256 "387600c52c789337ccb86e4fec35e0c7d47665bdf72f739f8cc7241fa032ef68"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.14/supabase_2.102.0-beta.14_darwin_amd64.tar.gz"
      sha256 "665ef649963a11e47eb6a1d40c01bb4e84c66ed5f14882ab8b02457aa6b27ede"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.14/supabase_2.102.0-beta.14_linux_arm64.tar.gz"
      sha256 "645d66e1c541dd5920a7142fe123aec36438938b4f90be7f51670da4e10f8192"
    else
      url "https://github.com/supabase/cli/releases/download/v2.102.0-beta.14/supabase_2.102.0-beta.14_linux_amd64.tar.gz"
      sha256 "76fc66e9dd637433691942d2a6878cd751f3126fb6d41aa0344674ecc3e8ea86"
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
