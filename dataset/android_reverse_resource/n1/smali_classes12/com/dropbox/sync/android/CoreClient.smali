.class abstract Lcom/dropbox/sync/android/CoreClient;
.super Ljava/lang/Object;
.source "CoreClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/CoreClient$Factory;
    }
.end annotation


# instance fields
.field protected final mAcct:Lcom/dropbox/sync/android/DbxAccount;

.field private final mCacheDir:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lcom/dropbox/sync/android/DbxAccount;Ljava/io/File;)V
    .locals 2
    .param p1, "account"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 63
    iput-object p1, p0, Lcom/dropbox/sync/android/CoreClient;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    .line 65
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Lcom/dropbox/sync/android/DbxRuntimeException$System;

    const-string v1, "Cache dir must exist before constructing a CoreClient"

    invoke-direct {v0, v1}, Lcom/dropbox/sync/android/DbxRuntimeException$System;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_1
    iput-object p2, p0, Lcom/dropbox/sync/android/CoreClient;->mCacheDir:Ljava/io/File;

    .line 69
    return-void
.end method


# virtual methods
.method getAccount()Lcom/dropbox/sync/android/DbxAccount;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreClient;->mAcct:Lcom/dropbox/sync/android/DbxAccount;

    return-object v0
.end method

.method protected getCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/sync/android/CoreClient;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method abstract getFactory()Lcom/dropbox/sync/android/CoreClient$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dropbox/sync/android/CoreClient$Factory",
            "<+",
            "Lcom/dropbox/sync/android/CoreClient;",
            ">;"
        }
    .end annotation
.end method

.method abstract shutDown(Z)V
.end method
