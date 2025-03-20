.class Lcom/dropbox/sync/android/CoreIOUtil$WriteException;
.super Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;
.source "CoreIOUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreIOUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriteException"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 0
    .param p1, "underlying"    # Ljava/io/IOException;

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;-><init>(Ljava/io/IOException;)V

    .line 331
    return-void
.end method
