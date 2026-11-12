class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.11/supabase_3.2.0-beta.11_darwin_arm64.tar.gz"
      sha256 "db0251bc95ac06d742ec76a357f3de8760fd958a00c363a53141405033fbc6a2"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.11/supabase_3.2.0-beta.11_darwin_amd64.tar.gz"
      sha256 "c27af767b4747b3e764e44e0b0156a61f15bc4a20fb5227b7109951918a076b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.11/supabase_3.2.0-beta.11_linux_arm64.tar.gz"
      sha256 "9aa8bb490f6d4d6d3f213025e7bf2b70c6aba6609d2bfdb05a8f813df7eb8928"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.11/supabase_3.2.0-beta.11_linux_amd64.tar.gz"
      sha256 "54736e43f1bfd63bda7ece60a92da353df588ecd8008da8c1066f89e885e339e"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
