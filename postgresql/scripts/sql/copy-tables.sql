COPY agency FROM '/home/vagrant/proj/data/agency.csv' with (format csv, header);

COPY alarmlevel FROM '/home/vagrant/proj/data/alarmlevel.csv' with (format csv, header);

COPY incident FROM '/home/vagrant/proj/data/incident.csv' with (format csv, header);

COPY incsitfound FROM '/home/vagrant/proj/data/incsitfound.csv' with (format csv, header);

COPY incsitfoundclass FROM '/home/vagrant/proj/data/incsitfoundclass.csv' with (format csv, header);

COPY incsitfoundsub FROM '/home/vagrant/proj/data/incsitfoundsub.csv' with (format csv, header);

COPY inctimes FROM '/home/vagrant/proj/data/inctimes.csv' with (format csv, header);

COPY mutualaid FROM '/home/vagrant/proj/data/mutualaid.csv' with (format csv, header);

COPY responder FROM '/home/vagrant/proj/data/responder.csv' with (format csv, header);

COPY responderunit FROM '/home/vagrant/proj/data/responderunit.csv' with (format csv, header);

COPY situationfound FROM '/home/vagrant/proj/data/situationfound.csv' with (format csv, header);

COPY station FROM '/home/vagrant/proj/data/station.csv' with (format csv, header);

COPY timedesc FROM '/home/vagrant/proj/data/timedesc.csv' with (format csv, header);

COPY typenaturecode FROM '/home/vagrant/proj/data/typenaturecode.csv' with (format csv, header);
