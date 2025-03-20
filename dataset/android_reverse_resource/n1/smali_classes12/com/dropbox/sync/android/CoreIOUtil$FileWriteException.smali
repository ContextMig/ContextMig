.class Lcom/dropbox/sync/android/CoreIOUtil$FileWriteException;
.super Lcom/dropbox/sync/android/CoreIOUtil$WriteException;
.source "CoreIOUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreIOUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileWriteException"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/CoreIOUtil$WriteException;)V
    .locals 1
    .param p1, "other"    # Lcom/dropbox/sync/android/CoreIOUtil$WriteException;

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/dropbox/sync/android/CoreIOUtil$WriteException;->getUnderlying()Ljava/io/IOException;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dropbox/sync/android/CoreIOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    .line 348
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "underlying"    # Ljava/io/IOException;

    .prologue
    .line 343
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/CoreIOUtil$WriteException;-><init>(Ljava/io/IOException;)V

    .line 344
    return-void
.end method
