.class Lcom/dropbox/sync/android/NativeFileSystem$Config;
.super Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;
.source "NativeFileSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/NativeFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Config"
.end annotation


# instance fields
.field public final cacheSizeLimit:J

.field public final flags:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/EnumSet;)V
    .locals 2
    .param p1, "cacheDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p2, "flags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/dropbox/sync/android/NativeFileSystem$ClientFlags;>;"
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/NativeClientBase$BaseConfig;-><init>(Ljava/io/File;)V

    .line 272
    const-wide/32 v0, 0x1f400000

    iput-wide v0, p0, Lcom/dropbox/sync/android/NativeFileSystem$Config;->cacheSizeLimit:J

    .line 273
    iput-object p2, p0, Lcom/dropbox/sync/android/NativeFileSystem$Config;->flags:Ljava/util/EnumSet;

    .line 274
    return-void
.end method
