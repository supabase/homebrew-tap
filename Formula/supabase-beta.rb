class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.1.0-beta.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.25/supabase_3.1.0-beta.25_darwin_arm64.tar.gz"
      sha256 "99104d0f6048b49d097315040ff1d0ae8e7874d54cd10043462bbfdc11f81518"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.25/supabase_3.1.0-beta.25_darwin_amd64.tar.gz"
      sha256 "430ee36bcaa9789cd306bba702ed6d0f140e91fdc3c09f0152f163362d1495ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.25/supabase_3.1.0-beta.25_linux_arm64.tar.gz"
      sha256 "629b2f42693d60f13238b8ddfcd134c864a1f6c574ce4fb906dc089d5924dd79"
    else
      url "https://github.com/supabase/cli/releases/download/v3.1.0-beta.25/supabase_3.1.0-beta.25_linux_amd64.tar.gz"
      sha256 "b3517108fb22b732b73e0937f9bf8ec5c845ee8262e1c8c4e2f67ec8fb604a2c"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
