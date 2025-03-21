.class public Lcom/dropbox/core/v2/teamlog/GroupLogInfo;
.super Ljava/lang/Object;
.source "GroupLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;,
        Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final displayName:Ljava/lang/String;

.field protected final externalId:Ljava/lang/String;

.field protected final groupId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "groupId"    # Ljava/lang/String;
    .param p3, "externalId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->groupId:Ljava/lang/String;

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'displayName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->displayName:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->externalId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;
    .locals 1
    .param p0, "displayName"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    if-ne p1, p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 178
    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 182
    check-cast v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;

    .line 183
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/GroupLogInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->displayName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->groupId:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->groupId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->groupId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->groupId:Ljava/lang/String;

    .line 184
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->externalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->externalId:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->externalId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->externalId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->externalId:Ljava/lang/String;

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/GroupLogInfo;
    :cond_6
    move v1, v2

    .line 189
    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->externalId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 164
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->groupId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->displayName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo;->externalId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 169
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
