CREATE TABLE [User].[User] (
    [UserId]            INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]         VARCHAR (100) NOT NULL,
    [MiddleName]        VARCHAR (100) NULL,
    [LastName]          VARCHAR (100) NOT NULL,
    [Email]             VARCHAR (100) NULL,
    [MembershipLevelId] INT           NOT NULL,
    [AddDate]           DATETIME      NULL,
    [ModifiedDate]      DATETIME      NOT NULL,
    [ModifiedByUserId]  INT           NOT NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [FK_User_MembershipLevel] FOREIGN KEY ([MembershipLevelId]) REFERENCES [Membership].[MembershipLevel] ([MembershipLevelId])
);

