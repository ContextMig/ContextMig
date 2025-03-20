.class public Lcom/dropbox/sync/android/DbxDatastoreInfo;
.super Ljava/lang/Object;
.source "DbxDatastoreInfo.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final mtime:Ljava/util/Date;

.field public final role:Lcom/dropbox/sync/android/DbxDatastore$Role;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JLcom/dropbox/sync/android/DbxDatastore$Role;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "mtime"    # J
    .param p5, "role"    # Lcom/dropbox/sync/android/DbxDatastore$Role;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "role must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->id:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->title:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p3, p4}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->mtime:Ljava/util/Date;

    .line 60
    iput-object p5, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->role:Lcom/dropbox/sync/android/DbxDatastore$Role;

    .line 61
    return-void

    .line 59
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 82
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

    .line 84
    check-cast v0, Lcom/dropbox/sync/android/DbxDatastoreInfo;

    .line 86
    .local v0, "other":Lcom/dropbox/sync/android/DbxDatastoreInfo;
    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->title:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dropbox/sync/android/CoreStringUtil;->nullableEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->mtime:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->mtime:Ljava/util/Date;

    invoke-static {v3, v4}, Lcom/dropbox/sync/android/CoreStringUtil;->nullableEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 70
    const/16 v0, 0x1f

    .line 71
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 72
    .local v1, "result":I
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 73
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->title:Ljava/lang/String;

    invoke-static {v3}, Lcom/dropbox/sync/android/CoreStringUtil;->nullableHashCode(Ljava/lang/String;)I

    move-result v3

    add-int v1, v2, v3

    .line 74
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->mtime:Ljava/util/Date;

    invoke-static {v3}, Lcom/dropbox/sync/android/CoreStringUtil;->nullableHashCode(Ljava/lang/Object;)I

    move-result v3

    add-int v1, v2, v3

    .line 75
    return v1
.end method

.method public isShareable()Z
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->id:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->role:Lcom/dropbox/sync/android/DbxDatastore$Role;

    sget-object v1, Lcom/dropbox/sync/android/DbxDatastore$Role;->OWNER:Lcom/dropbox/sync/android/DbxDatastore$Role;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->role:Lcom/dropbox/sync/android/DbxDatastore$Role;

    sget-object v1, Lcom/dropbox/sync/android/DbxDatastore$Role;->EDITOR:Lcom/dropbox/sync/android/DbxDatastore$Role;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(dsid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/sync/android/DbxDatastoreInfo;->mtime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
