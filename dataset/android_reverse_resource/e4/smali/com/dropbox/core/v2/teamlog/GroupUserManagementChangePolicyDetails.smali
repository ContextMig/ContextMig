.class public Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;
.super Ljava/lang/Object;
.source "GroupUserManagementChangePolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;)V
    .locals 1
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;)V
    .locals 2
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;
    .param p2, "previousValue"    # Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    .line 43
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p1, p0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 94
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 95
    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 99
    check-cast v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;

    .line 100
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    .line 101
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;
    :cond_5
    move v1, v2

    .line 105
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 82
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/GroupUserManagementPolicy;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 86
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupUserManagementChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
