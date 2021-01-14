CREATE TABLE [User].[UserSessionLog] (
    [UserSessionLogId]  INT      NOT NULL,
    [UserId]            INT      NULL,
    [UserSessionActive] BIT      NULL,
    [LoginDateTime]     DATETIME NULL,
    [AddDate]           DATETIME NULL,
    CONSTRAINT [PK_UserSessionLog] PRIMARY KEY CLUSTERED ([UserSessionLogId] ASC),
    CONSTRAINT [FK_UserSessionLog_User] FOREIGN KEY ([UserId]) REFERENCES [User].[User] ([UserId])
);

