class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.15/supabase_3.2.0-beta.15_darwin_arm64.tar.gz"
      sha256 "5172f214cd1f77041f5023fc8fa9c4ec884418e1038fae08463b1ad6d0564a7d"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.15/supabase_3.2.0-beta.15_darwin_amd64.tar.gz"
      sha256 "944639c5fb6bbf98c3943eb5b5c0ce2c63784d8b172c556f0fb4a4d7c8b342c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.15/supabase_3.2.0-beta.15_linux_arm64.tar.gz"
      sha256 "3578127d96726a2b4eca89c5ce4fe6ae06b5a9277d43e1f119d47e6a3dce8f58"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.15/supabase_3.2.0-beta.15_linux_amd64.tar.gz"
      sha256 "9210fc8d95eabe8ee1c11f6171c53428be8a60532b40fc3ce619f1b11cf8fd89"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
