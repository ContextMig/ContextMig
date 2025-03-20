.class public Lcom/dropbox/sync/android/DbxException$Network;
.super Lcom/dropbox/sync/android/DbxException;
.source "DbxException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Network"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxException$1;)V

    .line 208
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userError"    # Ljava/lang/String;

    .prologue
    .line 204
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->NETWORK:Lcom/dropbox/sync/android/DbxError;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxException$1;)V

    .line 205
    return-void
.end method
