.class public Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;
.super Ljava/lang/Object;
.source "FileSaveCopyReferenceDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final relocateActionDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "relocateActionDetails":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Required value for \'relocateActionDetails\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;

    .line 41
    .local v0, "x":Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;
    if-nez v0, :cond_1

    .line 42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "An item in list \'relocateActionDetails\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "x":Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;->relocateActionDetails:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;

    .line 76
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;->relocateActionDetails:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;->relocateActionDetails:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;->relocateActionDetails:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;->relocateActionDetails:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getRelocateActionDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/teamlog/RelocateAssetReferencesLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;->relocateActionDetails:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 59
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails;->relocateActionDetails:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 62
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileSaveCopyReferenceDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
