.class public Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
.super Ljava/lang/Object;
.source "UploadSessionOffsetError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;
    }
.end annotation


# instance fields
.field protected final correctOffset:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "correctOffset"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError;->correctOffset:J

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError;

    .line 59
    .local v0, "other":Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
    iget-wide v4, p0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError;->correctOffset:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError;->correctOffset:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/UploadSessionOffsetError;
    :cond_3
    move v1, v2

    .line 62
    goto :goto_0
.end method

.method public getCorrectOffset()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError;->correctOffset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 42
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError;->correctOffset:J

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 45
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/UploadSessionOffsetError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
