.class abstract Lcom/dropbox/sync/android/CoreClient$Factory;
.super Ljava/lang/Object;
.source "CoreClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/dropbox/sync/android/CoreClient;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lcom/dropbox/sync/android/CoreClient$Factory;, "Lcom/dropbox/sync/android/CoreClient$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract create(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeApp;Ljava/io/File;)Lcom/dropbox/sync/android/CoreClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/DbxAccount;",
            "Lcom/dropbox/sync/android/NativeApp;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation
.end method

.method public createLocal(Lcom/dropbox/sync/android/DbxAccount;Lcom/dropbox/sync/android/NativeEnv;Ljava/io/File;)Lcom/dropbox/sync/android/CoreClient;
    .locals 1
    .param p1, "acct"    # Lcom/dropbox/sync/android/DbxAccount;
    .param p2, "env"    # Lcom/dropbox/sync/android/NativeEnv;
    .param p3, "clientCacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/sync/android/DbxAccount;",
            "Lcom/dropbox/sync/android/NativeEnv;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/dropbox/sync/android/CoreClient$Factory;, "Lcom/dropbox/sync/android/CoreClient$Factory<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getCacheDirTag()Ljava/lang/String;
.end method

.method public final key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lcom/dropbox/sync/android/CoreClient$Factory;, "Lcom/dropbox/sync/android/CoreClient$Factory<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
