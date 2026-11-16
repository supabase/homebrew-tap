class SupabaseBeta < Formula
  desc "Supabase CLI"
  homepage "https://supabase.com"
  version "3.2.0-beta.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.22/supabase_3.2.0-beta.22_darwin_arm64.tar.gz"
      sha256 "e9387846fff70ad6539c57d65ee19ec3da3d65117a2bf72121a20f4dda3c538c"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.22/supabase_3.2.0-beta.22_darwin_amd64.tar.gz"
      sha256 "7706234e6ddaf1fb415a887ee3f97ee8601b81731a8e7373f41e54b7a68521ec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.22/supabase_3.2.0-beta.22_linux_arm64.tar.gz"
      sha256 "72c593744107edabb1d52974797145b160d444ab4a371ec804e81c1eae7b0787"
    else
      url "https://github.com/supabase/cli/releases/download/v3.2.0-beta.22/supabase_3.2.0-beta.22_linux_amd64.tar.gz"
      sha256 "b50e37cab2fe2ca6d1323d6a73dd881275db631d40e106125e5b5c34051dac4b"
    end
  end

  def install
    bin.install "supabase"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supabase --version")
  end
end
