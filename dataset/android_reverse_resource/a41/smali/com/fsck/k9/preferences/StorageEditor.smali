.class public Lcom/fsck/k9/preferences/StorageEditor;
.super Ljava/lang/Object;
.source "StorageEditor.java"


# instance fields
.field private changes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private removals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field snapshot:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private storage:Lcom/fsck/k9/preferences/Storage;


# direct methods
.method constructor <init>(Lcom/fsck/k9/preferences/Storage;)V
    .locals 2
    .param p1, "storage"    # Lcom/fsck/k9/preferences/Storage;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->changes:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->removals:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->snapshot:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/fsck/k9/preferences/StorageEditor;->storage:Lcom/fsck/k9/preferences/Storage;

    .line 25
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->snapshot:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fsck/k9/preferences/Storage;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/preferences/StorageEditor;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/preferences/StorageEditor;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->removals:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/preferences/StorageEditor;)Lcom/fsck/k9/preferences/Storage;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/preferences/StorageEditor;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->storage:Lcom/fsck/k9/preferences/Storage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/preferences/StorageEditor;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/preferences/StorageEditor;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->changes:Ljava/util/Map;

    return-object v0
.end method

.method private commitChanges()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 54
    .local v4, "startTime":J
    const-string v1, "Committing preference changes"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lcom/fsck/k9/preferences/StorageEditor$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/preferences/StorageEditor$1;-><init>(Lcom/fsck/k9/preferences/StorageEditor;)V

    .line 72
    .local v0, "committer":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/fsck/k9/preferences/StorageEditor;->storage:Lcom/fsck/k9/preferences/Storage;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/preferences/Storage;->doInTransaction(Ljava/lang/Runnable;)V

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 74
    .local v2, "endTime":J
    const-string v1, "Preferences commit took %d ms"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sub-long v8, v2, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v1, v6}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method


# virtual methods
.method public commit()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/fsck/k9/preferences/StorageEditor;->commitChanges()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v1, 0x1

    .line 48
    :goto_0
    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to save preferences"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public copy(Landroid/content/SharedPreferences;)V
    .locals 11
    .param p1, "input"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 29
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 30
    .local v2, "oldVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 31
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 33
    .local v3, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 34
    const-string v5, "Copying key \'%s\', value \'%s\'"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v5, p0, Lcom/fsck/k9/preferences/StorageEditor;->changes:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    const-string v5, "Skipping copying key \'%s\', value \'%s\'"

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v1, v6, v8

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)Lcom/fsck/k9/preferences/StorageEditor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->changes:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/fsck/k9/preferences/StorageEditor;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->changes:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/fsck/k9/preferences/StorageEditor;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->changes:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/fsck/k9/preferences/StorageEditor;->remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    .line 100
    :goto_0
    return-object p0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->changes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fsck/k9/preferences/StorageEditor;->removals:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object p0
.end method
