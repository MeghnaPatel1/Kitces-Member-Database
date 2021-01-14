CREATE TABLE [Membership].[MembershipLevel] (
    [MembershipLevelId] INT           NOT NULL,
    [Description]       VARCHAR (100) NULL,
    [Active]            BIT           NULL,
    [AddDate]           DATETIME      NOT NULL,
    [ModifiedDate]      DATETIME      NOT NULL,
    [ModifiedByUserId]  INT           NOT NULL,
    CONSTRAINT [PK_MembershipLevel] PRIMARY KEY CLUSTERED ([MembershipLevelId] ASC),
    CONSTRAINT [FK_MembershipLevel_User] FOREIGN KEY ([ModifiedByUserId]) REFERENCES [User].[User] ([UserId])
);

