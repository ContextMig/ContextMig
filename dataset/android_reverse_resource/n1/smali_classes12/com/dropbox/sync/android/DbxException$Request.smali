.class public Lcom/dropbox/sync/android/DbxException$Request;
.super Lcom/dropbox/sync/android/DbxException$Server;
.source "DbxException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userError"    # Ljava/lang/String;

    .prologue
    .line 322
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->REQUEST:Lcom/dropbox/sync/android/DbxError;

    invoke-direct {p0, v0, p1, p2}, Lcom/dropbox/sync/android/DbxException$Server;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method
