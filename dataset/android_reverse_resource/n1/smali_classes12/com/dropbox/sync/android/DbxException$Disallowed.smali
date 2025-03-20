.class public Lcom/dropbox/sync/android/DbxException$Disallowed;
.super Lcom/dropbox/sync/android/DbxException$InvalidOperation;
.source "DbxException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Disallowed"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxException$InvalidOperation;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userError"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->DISALLOWED:Lcom/dropbox/sync/android/DbxError;

    invoke-direct {p0, v0, p1, p2}, Lcom/dropbox/sync/android/DbxException$InvalidOperation;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method
