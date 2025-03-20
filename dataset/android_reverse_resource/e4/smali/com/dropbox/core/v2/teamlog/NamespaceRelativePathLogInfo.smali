.class public Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;
.super Ljava/lang/Object;
.source "NamespaceRelativePathLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;,
        Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
    }
.end annotation


# instance fields
.field protected final nsId:Ljava/lang/String;

.field protected final relativePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "nsId"    # Ljava/lang/String;
    .param p2, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'nsId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->nsId:Ljava/lang/String;

    .line 49
    if-eqz p2, :cond_1

    .line 50
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'relativePath\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->relativePath:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    if-ne p1, p0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 175
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 176
    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 180
    check-cast v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    .line 181
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->nsId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->nsId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->nsId:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->nsId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->nsId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->relativePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->relativePath:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->relativePath:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->relativePath:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->relativePath:Ljava/lang/String;

    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;
    :cond_5
    move v1, v2

    .line 186
    goto :goto_0
.end method

.method public getNsId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->nsId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->relativePath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 163
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->nsId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->relativePath:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 167
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    sget-object v0, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
