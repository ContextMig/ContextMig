.class public Lcom/dropbox/sync/android/DbxRuntimeException$BadType;
.super Lcom/dropbox/sync/android/DbxRuntimeException;
.source "DbxRuntimeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxRuntimeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadType"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 149
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->BAD_TYPE:Lcom/dropbox/sync/android/DbxError;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V

    .line 150
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "userError"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v0, Lcom/dropbox/sync/android/DbxError;->BAD_TYPE:Lcom/dropbox/sync/android/DbxError;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V

    .line 156
    return-void
.end method
