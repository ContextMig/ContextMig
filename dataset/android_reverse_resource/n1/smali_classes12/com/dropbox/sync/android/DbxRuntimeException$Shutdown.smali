.class public Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown;
.super Lcom/dropbox/sync/android/DbxRuntimeException$BadState;
.source "DbxRuntimeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxRuntimeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Shutdown"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userError"    # Ljava/lang/String;

    .prologue
    .line 107
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->SHUTDOWN:Lcom/dropbox/sync/android/DbxError;

    invoke-direct {p0, v0, p1, p2}, Lcom/dropbox/sync/android/DbxRuntimeException$BadState;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
