.class abstract Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;
.super Ljava/io/IOException;
.source "CoreIOUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/CoreIOUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WrappedException"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .param p1, "underlying"    # Ljava/io/IOException;

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 286
    return-void
.end method


# virtual methods
.method public getUnderlying()Ljava/io/IOException;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/dropbox/sync/android/CoreIOUtil$WrappedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    return-object v0
.end method
