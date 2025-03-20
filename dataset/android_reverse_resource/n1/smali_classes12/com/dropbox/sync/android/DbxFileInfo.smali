.class public final Lcom/dropbox/sync/android/DbxFileInfo;
.super Ljava/lang/Object;
.source "DbxFileInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dropbox/sync/android/DbxFileInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final iconName:Ljava/lang/String;

.field public final isFolder:Z

.field public final modifiedTime:Ljava/util/Date;

.field public final path:Lcom/dropbox/sync/android/DbxPath;

.field public final size:J

.field public final thumbExists:Z


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxPath;ZJLjava/util/Date;ZLjava/lang/String;)V
    .locals 1
    .param p1, "path"    # Lcom/dropbox/sync/android/DbxPath;
    .param p2, "isFolder"    # Z
    .param p3, "size"    # J
    .param p5, "lastModified"    # Ljava/util/Date;
    .param p6, "thumbExists"    # Z
    .param p7, "iconName"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    .line 68
    iput-boolean p2, p0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    .line 69
    iput-wide p3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->size:J

    .line 70
    iput-object p5, p0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    .line 71
    iput-boolean p6, p0, Lcom/dropbox/sync/android/DbxFileInfo;->thumbExists:Z

    .line 72
    iput-object p7, p0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/dropbox/sync/android/DbxFileInfo;)I
    .locals 12
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxFileInfo;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 132
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    iget-object v7, p1, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v6, v7}, Lcom/dropbox/sync/android/DbxPath;->compareTo(Lcom/dropbox/sync/android/DbxPath;)I

    move-result v0

    .line 133
    .local v0, "cmp":I
    if-eqz v0, :cond_1

    move v4, v0

    .line 161
    :cond_0
    :goto_0
    return v4

    .line 136
    :cond_1
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    iget-object v7, p1, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 137
    if-eqz v0, :cond_2

    move v4, v0

    .line 138
    goto :goto_0

    .line 140
    :cond_2
    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxFileInfo;->size:J

    iget-wide v8, p1, Lcom/dropbox/sync/android/DbxFileInfo;->size:J

    sub-long v2, v6, v8

    .line 141
    .local v2, "longcmp":J
    cmp-long v6, v10, v2

    if-eqz v6, :cond_4

    .line 142
    cmp-long v5, v2, v10

    if-gez v5, :cond_3

    :goto_1
    move v4, v1

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    .line 144
    :cond_4
    iget-boolean v6, p0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    iget-boolean v7, p1, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    if-eq v6, v7, :cond_5

    .line 145
    iget-boolean v5, p0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    if-nez v5, :cond_0

    move v4, v1

    goto :goto_0

    .line 147
    :cond_5
    iget-boolean v6, p0, Lcom/dropbox/sync/android/DbxFileInfo;->thumbExists:Z

    iget-boolean v7, p1, Lcom/dropbox/sync/android/DbxFileInfo;->thumbExists:Z

    if-eq v6, v7, :cond_6

    .line 148
    iget-boolean v5, p0, Lcom/dropbox/sync/android/DbxFileInfo;->thumbExists:Z

    if-nez v5, :cond_0

    move v4, v1

    goto :goto_0

    .line 150
    :cond_6
    iget-object v6, p0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    if-nez v6, :cond_8

    .line 151
    iget-object v4, p1, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    if-nez v4, :cond_7

    move v1, v5

    :cond_7
    move v4, v1

    goto :goto_0

    .line 152
    :cond_8
    iget-object v1, p1, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    iget-object v4, p1, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 156
    if-eqz v0, :cond_9

    move v4, v0

    .line 157
    goto :goto_0

    :cond_9
    move v4, v5

    .line 161
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/dropbox/sync/android/DbxFileInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxFileInfo;->compareTo(Lcom/dropbox/sync/android/DbxFileInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/dropbox/sync/android/DbxFileInfo;

    .line 104
    .local v0, "other":Lcom/dropbox/sync/android/DbxFileInfo;
    iget-boolean v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 105
    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->thumbExists:Z

    iget-boolean v4, v0, Lcom/dropbox/sync/android/DbxFileInfo;->thumbExists:Z

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 107
    :cond_5
    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxFileInfo;->size:J

    iget-wide v6, v0, Lcom/dropbox/sync/android/DbxFileInfo;->size:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 109
    :cond_6
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    if-nez v3, :cond_7

    .line 110
    iget-object v3, v0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    if-eqz v3, :cond_8

    move v1, v2

    goto :goto_0

    .line 111
    :cond_7
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 112
    goto :goto_0

    .line 115
    :cond_8
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    if-nez v3, :cond_9

    .line 116
    iget-object v3, v0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    if-eqz v3, :cond_a

    move v1, v2

    goto :goto_0

    .line 117
    :cond_9
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v3, v4}, Lcom/dropbox/sync/android/DbxPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    move v1, v2

    .line 118
    goto :goto_0

    .line 121
    :cond_a
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    if-nez v3, :cond_b

    .line 122
    iget-object v3, v0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 123
    :cond_b
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 124
    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 84
    const/16 v0, 0x1f

    .line 85
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 86
    .local v1, "result":I
    iget-boolean v2, p0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 87
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 88
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxFileInfo;->size:J

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxFileInfo;->size:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v1, v2, v4

    .line 89
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 91
    mul-int/lit8 v4, v1, 0x1f

    iget-boolean v2, p0, Lcom/dropbox/sync/android/DbxFileInfo;->thumbExists:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x2694

    :goto_3
    add-int v1, v4, v2

    .line 92
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    .line 93
    return v1

    .line 86
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v2}, Lcom/dropbox/sync/android/DbxPath;->hashCode()I

    move-result v2

    goto :goto_1

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_2

    .line 91
    :cond_3
    const/16 v2, 0x265d

    goto :goto_3

    .line 92
    :cond_4
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileInfo;->path:Lcom/dropbox/sync/android/DbxPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileInfo;->isFolder:Z

    if-eqz v0, :cond_0

    const-string v0, "folder"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxFileInfo;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bytes; lastModified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileInfo;->modifiedTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/dropbox/sync/android/DbxFileInfo;->thumbExists:Z

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thumb available; icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxFileInfo;->iconName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "file"

    goto :goto_0

    :cond_1
    const-string v0, "no "

    goto :goto_1
.end method
