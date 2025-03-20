.class Lcom/dropbox/sync/android/CoreIOUtil$FileReadException;
.super Lcom/dropbox/sync/android/CoreIOUtil$ReadException;
.source "CoreIOUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreIOUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileReadException"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/CoreIOUtil$ReadException;)V
    .locals 1
    .param p1, "other"    # Lcom/dropbox/sync/android/CoreIOUtil$ReadException;

    .prologue
    .line 317
    invoke-virtual {p1}, Lcom/dropbox/sync/android/CoreIOUtil$ReadException;->getUnderlying()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/CoreIOUtil$ReadException;-><init>(Ljava/io/IOException;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "underlying"    # Ljava/io/IOException;

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/CoreIOUtil$ReadException;-><init>(Ljava/io/IOException;)V

    .line 314
    return-void
.end method
