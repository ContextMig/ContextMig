.class public Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;
.super Ljava/lang/Object;
.source "SharedContentClaimInvitationDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Builder;
    }
.end annotation


# instance fields
.field protected final originalFolderName:Ljava/lang/String;

.field protected final sharedContentLink:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "targetAssetIndex"    # J

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "targetAssetIndex"    # J
    .param p3, "originalFolderName"    # Ljava/lang/String;
    .param p4, "sharedContentLink"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->targetAssetIndex:J

    .line 40
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->originalFolderName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->sharedContentLink:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static newBuilder(J)Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Builder;
    .locals 2
    .param p0, "targetAssetIndex"    # J

    .prologue
    .line 90
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Builder;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    if-ne p1, p0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 163
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;

    .line 164
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->originalFolderName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->originalFolderName:Ljava/lang/String;

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->sharedContentLink:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->sharedContentLink:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->sharedContentLink:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->sharedContentLink:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->sharedContentLink:Ljava/lang/String;

    .line 166
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;
    :cond_5
    move v1, v2

    .line 170
    goto :goto_0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedContentLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->sharedContentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 145
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->targetAssetIndex:J

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->originalFolderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails;->sharedContentLink:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 145
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 150
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentClaimInvitationDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
