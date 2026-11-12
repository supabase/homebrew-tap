class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.6/supabase_3.2.0-beta.6_darwin_arm64.tar.gz"
      sha256 "bf6a2335893047907750daf9d12b094e110d1c13e11da69d1144858e0108e9c1"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.6/supabase_3.2.0-beta.6_darwin_amd64.tar.gz"
      sha256 "9e741c18b9ae9766be65bc342964b5d797786d65676fc2661351a759e1d57d13"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.6/supabase_3.2.0-beta.6_linux_arm64.tar.gz"
      sha256 "0d6b941233c5abcc8cc97746bd459389d5fced877abaaa29c1f15d3e4e139ac8"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.6/supabase_3.2.0-beta.6_linux_amd64.tar.gz"
      sha256 "9455511cd14b5a8523727065e79180d73353e842e12100a9611091b1b5ac0838"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
