CREATE TABLE [Messages 1](
[MID] int not null PRIMARY KEY,
[Sender] int not null,
[Receiver] int not null,
[Title] nvarchar(MAX) not null,
[body] nvarchar(MAX) not null,
[Date] date not null,
[Time] time(7) not null,
[Del Tag] bit not null
);