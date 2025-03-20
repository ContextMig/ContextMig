.class Lcom/dropbox/sync/android/DbxFileSystem$Factory;
.super Lcom/dropbox/sync/android/CoreClient$Factory;
.source "DbxFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/sync/android/CoreClient$Factory",
        "<",
        "Lcom/dropbox/sync/android/DbxFileSystem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/dropbox/sync/android/CoreClient$Factory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxFileSystem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxFileSystem$1;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/dropbox/sync/android/DbxFileSystem$Factory;-><init>()V

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
    .line 247
    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxFileSystem$Factory;->create(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)Lcom/dropbox/sync/android/DbxFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)Lcom/dropbox/sync/android/DbxFileSystem;
    .locals 6
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "app"    # Lcom/dropbox/sync/android/NativeApp;
    .param p3, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lcom/dropbox/sync/android/DbxFileSystem;

    const-class v1, Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/sync/android/DbxFileSystem;-><init>(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;Ljava/util/EnumSet;Lcom/dropbox/sync/android/DbxFileSystem$1;)V

    return-object v0
.end method

.method public getCacheDirTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return-object v0
.end method
