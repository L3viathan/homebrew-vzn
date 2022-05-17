class Aceto < Formula
  include Language::Python::Virtualenv

  desc "A programming language based on a 2D Hilbert curve grid"
  homepage "https://github.com/aceto/aceto"
  url "https://github.com/aceto/aceto/archive/refs/tags/v1.10.2.tar.gz"
  sha256 "2948038f8e3c373c417bb435af1403897ac5f015aaae663a3f5c83edef989202"
  license ""

  depends_on "python"

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  resource "hilbertcurve" do
    url "https://files.pythonhosted.org/packages/b3/d1/0ee30ca7b861c3396759ee47a6dd997806f1c65314b4782518bdc019d6da/hilbertcurve-1.0.5.tar.gz"
    sha256 "aefc00859c9cdefee1e53b722c33b2091afa18a608a7eedc7ee2acdbf62feb36"
  end

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
  end
end
