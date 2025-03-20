.class public Lcom/dropbox/sync/android/DbxPath$InvalidPathException;
.super Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
.source "DbxPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidPathException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return-void
.end method
