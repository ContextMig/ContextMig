.class public Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;
.super Ljava/lang/Object;
.source "SharedFolderChangeMemberPolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

.field protected final originalFolderName:Ljava/lang/String;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

.field protected final sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;)V
    .locals 9
    .param p1, "targetAssetIndex"    # J
    .param p3, "originalFolderName"    # Ljava/lang/String;
    .param p4, "newValue"    # Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .prologue
    const/4 v6, 0x0

    .line 76
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v6

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;)V

    .line 77
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;)V
    .locals 3
    .param p1, "targetAssetIndex"    # J
    .param p3, "originalFolderName"    # Ljava/lang/String;
    .param p4, "newValue"    # Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;
    .param p5, "sharedFolderType"    # Ljava/lang/String;
    .param p6, "previousValue"    # Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->targetAssetIndex:J

    .line 50
    if-nez p3, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->originalFolderName:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->sharedFolderType:Ljava/lang/String;

    .line 55
    if-nez p4, :cond_1

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .line 59
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .line 60
    return-void
.end method

.method public static newBuilder(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;)Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Builder;
    .locals 2
    .param p0, "targetAssetIndex"    # J
    .param p2, "originalFolderName"    # Ljava/lang/String;
    .param p3, "newValue"    # Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .prologue
    .line 139
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Builder;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    if-ne p1, p0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 222
    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 226
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;

    .line 227
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->originalFolderName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->originalFolderName:Ljava/lang/String;

    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .line 229
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->sharedFolderType:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->sharedFolderType:Ljava/lang/String;

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    .line 231
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;
    :cond_7
    move v1, v2

    .line 235
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    return-object v0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    return-object v0
.end method

.method public getSharedFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->sharedFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 206
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->targetAssetIndex:J

    .line 207
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->originalFolderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->sharedFolderType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedFolderMemberPolicy;

    aput-object v3, v1, v2

    .line 206
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 213
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeMemberPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
