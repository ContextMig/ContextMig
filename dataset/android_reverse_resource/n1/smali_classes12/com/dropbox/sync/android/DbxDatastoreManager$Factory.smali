.class Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;
.super Lcom/dropbox/sync/android/CoreClient$Factory;
.source "DbxDatastoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxDatastoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/sync/android/CoreClient$Factory",
        "<",
        "Lcom/dropbox/sync/android/DbxDatastoreManager;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreClient$Factory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxDatastoreManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxDatastoreManager$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)Lcom/dropbox/sync/android/CoreClient;
    .locals 1
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "x1"    # Lcom/dropbox/sync/android/NativeApp;
    .param p3, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;->create(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)Lcom/dropbox/sync/android/DbxDatastoreManager;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)Lcom/dropbox/sync/android/DbxDatastoreManager;
    .locals 2
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p3, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastoreManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/dropbox/sync/android/DbxDatastoreManager;-><init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;Lcom/dropbox/sync/android/DbxDatastoreManager$1;)V

    return-object v0
.end method

.method public bridge synthetic createLocal(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;)Lcom/dropbox/sync/android/CoreClient;
    .locals 1
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "x1"    # Lcom/dropbox/sync/android/NativeEnv;
    .param p3, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxDatastoreManager$Factory;->createLocal(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;)Lcom/dropbox/sync/android/DbxDatastoreManager;

    move-result-object v0

    return-object v0
.end method

.method public createLocal(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;)Lcom/dropbox/sync/android/DbxDatastoreManager;
    .locals 2
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "env"    # Lcom/dropbox/sync/android/NativeEnv;
    .param p3, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/sync/android/DbxDatastoreManager;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/dropbox/sync/android/DbxDatastoreManager;-><init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;Lcom/dropbox/sync/android/DbxDatastoreManager$1;)V

    return-object v0
.end method

.method public getCacheDirTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/dropbox/sync/android/DbxDatastoreManager;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
