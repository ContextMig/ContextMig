.class public Lcom/fsck/k9/Preferences;
.super Ljava/lang/Object;
.source "Preferences.java"


# static fields
.field private static preferences:Lcom/fsck/k9/Preferences;


# instance fields
.field private accounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation
.end field

.field private accountsInOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private newAccount:Lcom/fsck/k9/Account;

.field private storage:Lcom/fsck/k9/preferences/Storage;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    .line 36
    iput-object v1, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    .line 41
    invoke-static {p1}, Lcom/fsck/k9/preferences/Storage;->getStorage(Landroid/content/Context;)Lcom/fsck/k9/preferences/Storage;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/Preferences;->storage:Lcom/fsck/k9/preferences/Storage;

    .line 42
    iput-object p1, p0, Lcom/fsck/k9/Preferences;->context:Landroid/content/Context;

    .line 43
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->storage:Lcom/fsck/k9/preferences/Storage;

    invoke-virtual {v1}, Lcom/fsck/k9/preferences/Storage;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "Preferences storage is zero-size, importing from Android-style preferences"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->storage:Lcom/fsck/k9/preferences/Storage;

    invoke-virtual {v1}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    .line 46
    .local v0, "editor":Lcom/fsck/k9/preferences/StorageEditor;
    const-string v1, "AndroidMail.Main"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/preferences/StorageEditor;->copy(Landroid/content/SharedPreferences;)V

    .line 47
    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 49
    .end local v0    # "editor":Lcom/fsck/k9/preferences/StorageEditor;
    :cond_0
    return-void
.end method

.method static getEnumStringPref(Lcom/fsck/k9/preferences/Storage;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 6
    .param p0, "storage"    # Lcom/fsck/k9/preferences/Storage;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Lcom/fsck/k9/preferences/Storage;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 171
    .local p2, "defaultEnum":Ljava/lang/Enum;, "TT;"
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "stringPref":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 182
    .end local p2    # "defaultEnum":Ljava/lang/Enum;, "TT;"
    :goto_0
    return-object p2

    .line 177
    .restart local p2    # "defaultEnum":Ljava/lang/Enum;, "TT;"
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "Unable to convert preference key [%s] value [%s] to enum of type %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    .line 180
    invoke-virtual {p2}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    .line 179
    invoke-static {v0, v2, v3}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-class v2, Lcom/fsck/k9/Preferences;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "appContext":Landroid/content/Context;
    sget-object v1, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;

    if-nez v1, :cond_0

    .line 28
    new-instance v1, Lcom/fsck/k9/Preferences;

    invoke-direct {v1, v0}, Lcom/fsck/k9/Preferences;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;

    .line 30
    :cond_0
    sget-object v1, Lcom/fsck/k9/Preferences;->preferences:Lcom/fsck/k9/Preferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 26
    .end local v0    # "appContext":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public declared-synchronized deleteAccount(Lcom/fsck/k9/Account;)V
    .locals 5
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/fsck/k9/mail/store/RemoteStore;->removeInstance(Lcom/fsck/k9/mail/store/StoreConfig;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/fsck/k9/mailstore/LocalStore;->removeAccount(Lcom/fsck/k9/Account;)V

    .line 135
    invoke-virtual {p1, p0}, Lcom/fsck/k9/Account;->delete(Lcom/fsck/k9/Preferences;)V

    .line 137
    iget-object v1, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    if-ne v1, p1, :cond_2

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :cond_2
    monitor-exit p0

    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "Failed to reset remote store for account %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->loadAccounts()V

    .line 83
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailableAccounts()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAccounts()Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .local v2, "retval":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Account;

    .line 96
    .local v0, "account":Lcom/fsck/k9/Account;
    invoke-virtual {v0}, Lcom/fsck/k9/Account;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/fsck/k9/Preferences;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/fsck/k9/Account;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 93
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .end local v2    # "retval":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 101
    .restart local v1    # "allAccounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    .restart local v2    # "retval":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public getDefaultAccount()Lcom/fsck/k9/Account;
    .locals 6

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v3

    const-string v4, "defaultAccountUuid"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "defaultAccountUuid":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    .line 151
    .local v1, "defaultAccount":Lcom/fsck/k9/Account;
    if-nez v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getAvailableAccounts()Ljava/util/Collection;

    move-result-object v0

    .line 153
    .local v0, "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "defaultAccount":Lcom/fsck/k9/Account;
    check-cast v1, Lcom/fsck/k9/Account;

    .line 155
    .restart local v1    # "defaultAccount":Lcom/fsck/k9/Account;
    invoke-virtual {p0, v1}, Lcom/fsck/k9/Preferences;->setDefaultAccount(Lcom/fsck/k9/Account;)V

    .line 159
    .end local v0    # "accounts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fsck/k9/Account;>;"
    :cond_0
    return-object v1
.end method

.method public getStorage()Lcom/fsck/k9/preferences/Storage;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->storage:Lcom/fsck/k9/preferences/Storage;

    return-object v0
.end method

.method public declared-synchronized loadAccounts()V
    .locals 7

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    .line 53
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    .line 54
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v4

    const-string v5, "accountUuids"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/fsck/k9/preferences/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "accountUuids":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "uuids":[Ljava/lang/String;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 58
    .local v2, "uuid":Ljava/lang/String;
    new-instance v1, Lcom/fsck/k9/Account;

    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/Account;-><init>(Lcom/fsck/k9/Preferences;Ljava/lang/String;)V

    .line 59
    .local v1, "newAccount":Lcom/fsck/k9/Account;
    iget-object v6, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v6, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "newAccount":Lcom/fsck/k9/Account;
    .end local v2    # "uuid":Ljava/lang/String;
    .end local v3    # "uuids":[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v4}, Lcom/fsck/k9/Account;->getAccountNumber()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 64
    iget-object v4, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    iget-object v5, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v5}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v4, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    iget-object v5, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 66
    iget-object v4, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    iget-object v5, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_2
    monitor-exit p0

    return-void

    .line 52
    .end local v0    # "accountUuids":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized newAccount()Lcom/fsck/k9/Account;
    .locals 3

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/Preferences;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/fsck/k9/Account;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    .line 114
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accounts:Ljava/util/Map;

    iget-object v1, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->accountsInOrder:Ljava/util/List;

    iget-object v1, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/fsck/k9/Preferences;->newAccount:Lcom/fsck/k9/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultAccount(Lcom/fsck/k9/Account;)V
    .locals 3
    .param p1, "account"    # Lcom/fsck/k9/Account;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/fsck/k9/Preferences;->getStorage()Lcom/fsck/k9/preferences/Storage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/preferences/Storage;->edit()Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    const-string v1, "defaultAccountUuid"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/preferences/StorageEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/fsck/k9/preferences/StorageEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/preferences/StorageEditor;->commit()Z

    .line 164
    return-void
.end method
