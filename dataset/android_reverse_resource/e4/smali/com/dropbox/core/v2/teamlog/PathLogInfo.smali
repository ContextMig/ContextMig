.class public Lcom/dropbox/core/v2/teamlog/PathLogInfo;
.super Ljava/lang/Object;
.source "PathLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;
    }
.end annotation


# instance fields
.field protected final contextual:Ljava/lang/String;

.field protected final namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;)V
    .locals 1
    .param p1, "namespaceRelative"    # Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/PathLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceRelative"    # Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;
    .param p2, "contextual"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p2, :cond_0

    .line 41
    const-string/jumbo v0, "/(.|[\\r\\n])*"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'contextual\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    .line 46
    if-nez p1, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'namespaceRelative\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 101
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 105
    check-cast v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    .line 106
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/PathLogInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/PathLogInfo;
    :cond_5
    move v1, v2

    .line 111
    goto :goto_0
.end method

.method public getContextual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceRelative()Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->contextual:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->namespaceRelative:Lcom/dropbox/core/v2/teamlog/NamespaceRelativePathLogInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 92
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PathLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
