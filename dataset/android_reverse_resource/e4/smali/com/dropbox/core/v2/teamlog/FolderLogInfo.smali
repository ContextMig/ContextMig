.class public Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
.super Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;
.source "FolderLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;,
        Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V
    .locals 1
    .param p1, "path"    # Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v0}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Lcom/dropbox/core/v2/teamlog/PathLogInfo;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "fileId"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/FileOrFolderLogInfo;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;
    .locals 1
    .param p0, "path"    # Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Builder;-><init>(Lcom/dropbox/core/v2/teamlog/PathLogInfo;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    if-ne p1, p0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 155
    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 159
    check-cast v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;

    .line 160
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/PathLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    .line 161
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    .line 162
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/FolderLogInfo;
    :cond_6
    move v1, v2

    .line 166
    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Lcom/dropbox/core/v2/teamlog/PathLogInfo;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo;->path:Lcom/dropbox/core/v2/teamlog/PathLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
