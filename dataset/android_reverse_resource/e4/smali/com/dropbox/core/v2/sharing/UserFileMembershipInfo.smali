.class public Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;
.super Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
.source "UserFileMembershipInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;,
        Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;
    }
.end annotation


# instance fields
.field protected final timeLastSeen:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;)V
    .locals 7
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "user"    # Lcom/dropbox/core/v2/sharing/UserInfo;

    .prologue
    const/4 v3, 0x0

    .line 72
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;Ljava/util/List;Ljava/lang/String;ZLjava/util/Date;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;Ljava/util/List;Ljava/lang/String;ZLjava/util/Date;)V
    .locals 1
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "user"    # Lcom/dropbox/core/v2/sharing/UserInfo;
    .param p4, "initials"    # Ljava/lang/String;
    .param p5, "isInherited"    # Z
    .param p6, "timeLastSeen"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    invoke-direct/range {p0 .. p5}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;Ljava/util/List;Ljava/lang/String;Z)V

    .line 54
    invoke-static {p6}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->timeLastSeen:Ljava/util/Date;

    .line 55
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;)Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;
    .locals 1
    .param p0, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p1, "user"    # Lcom/dropbox/core/v2/sharing/UserInfo;

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-ne p1, p0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 245
    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 249
    check-cast v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;

    .line 250
    .local v0, "other":Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 251
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->permissions:Ljava/util/List;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->permissions:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->permissions:Ljava/util/List;

    .line 252
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->initials:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->initials:Ljava/lang/String;

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->initials:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->initials:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->initials:Ljava/lang/String;

    .line 253
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->isInherited:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->isInherited:Z

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->timeLastSeen:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->timeLastSeen:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->timeLastSeen:Ljava/util/Date;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->timeLastSeen:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->timeLastSeen:Ljava/util/Date;

    .line 255
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_7
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;
    :cond_8
    move v1, v2

    .line 259
    goto :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInherited()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->isInherited:Z

    return v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getTimeLastSeen()Ljava/util/Date;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->timeLastSeen:Ljava/util/Date;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/sharing/UserInfo;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 232
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo;->timeLastSeen:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 235
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 236
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UserFileMembershipInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
