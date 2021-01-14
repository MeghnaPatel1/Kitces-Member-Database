CREATE TABLE [Membership].[MembershipHistory] (
    [MembershipHistoryId] INT        NOT NULL,
    [UserId]              INT        NULL,
    [MembershipLevelId]   INT        NULL,
    [Active]              BIT        NULL,
    [AddDate]             NCHAR (10) NULL,
    CONSTRAINT [PK_MembershipHistory] PRIMARY KEY CLUSTERED ([MembershipHistoryId] ASC),
    CONSTRAINT [FK_MembershipHistory_UserId] FOREIGN KEY ([UserId]) REFERENCES [User].[User] ([UserId])
);

