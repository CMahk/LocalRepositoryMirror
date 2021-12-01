Name:           emacs
Version:        24.3
Release:        1%{?dist}
Summary:        GNU Emacs

License:        GPL v3
Source0:        %{name}-%{version}.tar.gz

BuildRequires:  ncurses-devel

%description


%prep
%setup -q


%build
%configure
make %{?_smp_mflags}


%install
rm -rf $RPM_BUILD_ROOT
%make_install


%files
%doc



%changelog
