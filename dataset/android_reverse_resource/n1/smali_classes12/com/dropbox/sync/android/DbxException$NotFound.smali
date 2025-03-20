.class public Lcom/dropbox/sync/android/DbxException$NotFound;
.super Lcom/dropbox/sync/android/DbxException$InvalidOperation;
.source "DbxException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotFound"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->NOT_FOUND:Lcom/dropbox/sync/android/DbxError;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/dropbox/sync/android/DbxException$InvalidOperation;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userError"    # Ljava/lang/String;

    .prologue
    .line 91
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->NOT_FOUND:Lcom/dropbox/sync/android/DbxError;

    invoke-direct {p0, v0, p1, p2}, Lcom/dropbox/sync/android/DbxException$InvalidOperation;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
