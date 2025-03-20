.class public Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;
.super Ljava/lang/Object;
.source "SharedContentCopyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final relocateActionDetails:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

.field protected final sharedContentLink:Ljava/lang/String;

.field protected final sharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;)V
    .locals 6
    .param p1, "sharedContentLink"    # Ljava/lang/String;
    .param p2, "targetAssetIndex"    # J
    .param p4, "relocateActionDetails"    # Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    .prologue
    .line 69
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;-><init>(Ljava/lang/String;JLcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedContentLink"    # Ljava/lang/String;
    .param p2, "targetAssetIndex"    # J
    .param p4, "relocateActionDetails"    # Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;
    .param p5, "sharingPermission"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharedContentLink\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharingPermission:Ljava/lang/String;

    .line 48
    iput-wide p2, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->targetAssetIndex:J

    .line 49
    if-nez p4, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'relocateActionDetails\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->relocateActionDetails:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-ne p1, p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 124
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 125
    goto :goto_0

    .line 128
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;

    .line 130
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->relocateActionDetails:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->relocateActionDetails:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->relocateActionDetails:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->relocateActionDetails:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    .line 132
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharingPermission:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharingPermission:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharingPermission:Ljava/lang/String;

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;
    :cond_6
    move v1, v2

    .line 137
    goto :goto_0
.end method

.method public getRelocateActionDetails()Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->relocateActionDetails:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    return-object v0
.end method

.method public getSharedContentLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getSharingPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 110
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharedContentLink:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->sharingPermission:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->targetAssetIndex:J

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails;->relocateActionDetails:Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    aput-object v3, v1, v2

    .line 110
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 116
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentCopyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
