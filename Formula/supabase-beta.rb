class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "2.100.2-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.4/supabase_2.100.2-beta.4_darwin_arm64.tar.gz"
      sha256 "af8378127da7dae480f7173392c7b1063c1d28723a4731f1ac4fee3a84dbb7d8"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.4/supabase_2.100.2-beta.4_darwin_amd64.tar.gz"
      sha256 "e726ec28d162cf28ace4be006b547dedab40617fc1eb878104249f679a176389"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.4/supabase_2.100.2-beta.4_linux_arm64.tar.gz"
      sha256 "91843697e282801e33ec491187291149dd5ac2dc8002d7663d7b5dfe24f2f8a2"
    else
      url "https://github.com/supabase/cli/releases/download/v2.100.2-beta.4/supabase_2.100.2-beta.4_linux_amd64.tar.gz"
      sha256 "7221d3a9a2b125c4dcab9dcfd71111941cbf08e3f9271b1c66ef23a165626338"
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
