.class public Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;
.super Ljava/lang/Object;
.source "GroupAddMemberDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final isGroupOwner:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isGroupOwner"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;->isGroupOwner:Z

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 57
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 62
    check-cast v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;

    .line 63
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;->isGroupOwner:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;->isGroupOwner:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;
    :cond_3
    move v1, v2

    .line 66
    goto :goto_0
.end method

.method public getIsGroupOwner()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;->isGroupOwner:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 46
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails;->isGroupOwner:Z

    .line 47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 49
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupAddMemberDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
