.class public Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
.super Lcom/dropbox/sync/android/DbxRuntimeException;
.source "DbxRuntimeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxRuntimeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalArgument"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V

    .line 208
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->ILLEGAL_ARGUMENT:Lcom/dropbox/sync/android/DbxError;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V

    .line 199
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userError"    # Ljava/lang/String;

    .prologue
    .line 204
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->ILLEGAL_ARGUMENT:Lcom/dropbox/sync/android/DbxError;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V

    .line 205
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 201
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->ILLEGAL_ARGUMENT:Lcom/dropbox/sync/android/DbxError;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/Throwable;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V

    .line 202
    return-void
.end method
