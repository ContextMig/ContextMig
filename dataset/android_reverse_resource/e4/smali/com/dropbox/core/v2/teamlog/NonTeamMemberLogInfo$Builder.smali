.class public Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;
.super Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
.source "NonTeamMemberLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    iget-object v1, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;->accountId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;->displayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;->email:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/teamlog/UserLogInfo;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;->build()Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;
    .locals 0
    .param p1, "accountId"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    .line 112
    return-object p0
.end method

.method public bridge synthetic withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;->withAccountId(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    .line 128
    return-object p0
.end method

.method public bridge synthetic withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;->withDisplayName(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;->withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;

    .line 146
    return-object p0
.end method

.method public bridge synthetic withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/UserLogInfo$Builder;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;->withEmail(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/NonTeamMemberLogInfo$Builder;

    move-result-object v0

    return-object v0
.end method
