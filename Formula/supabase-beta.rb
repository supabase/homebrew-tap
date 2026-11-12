class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.9/supabase_3.2.0-beta.9_darwin_arm64.tar.gz"
      sha256 "91daeff638656c6ffb2be03c50b93536390417b462b6ca2311084d8ee0646fe8"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.9/supabase_3.2.0-beta.9_darwin_amd64.tar.gz"
      sha256 "0db6a2487dccf730dab47dbb4d81156b2a31c76c2cb7eb33ccbef0ba59a090e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.9/supabase_3.2.0-beta.9_linux_arm64.tar.gz"
      sha256 "d7487453d4c06cedffe7346e02e06109eec366298145a0892e57a2dd11412499"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.9/supabase_3.2.0-beta.9_linux_amd64.tar.gz"
      sha256 "bec49c075fbd34571d6bfd1f73a3ce071075bdf9ac947aee6bbe1a0028915e2e"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
