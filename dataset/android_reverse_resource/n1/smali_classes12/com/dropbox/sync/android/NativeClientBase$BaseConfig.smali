.class Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;
.super Ljava/lang/Object;
.source "NativeClientBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseConfig"
.end annotation


# instance fields
.field public final cacheRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;->cacheRoot:Ljava/lang/String;

    .line 23
    return-void
.end method
