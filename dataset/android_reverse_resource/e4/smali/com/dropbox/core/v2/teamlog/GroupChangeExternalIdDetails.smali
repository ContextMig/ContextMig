.class public Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;
.super Ljava/lang/Object;
.source "GroupChangeExternalIdDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final newValue:Ljava/lang/String;

.field protected final previousValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/String;
    .param p2, "previousValue"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->newValue:Ljava/lang/String;

    .line 41
    if-nez p2, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'previousValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->previousValue:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p1, p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 79
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;

    .line 85
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->newValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->newValue:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->newValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->newValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->previousValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->previousValue:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->previousValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->previousValue:Ljava/lang/String;

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;
    :cond_5
    move v1, v2

    .line 90
    goto :goto_0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->newValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->previousValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 67
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->newValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails;->previousValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 71
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/GroupChangeExternalIdDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
