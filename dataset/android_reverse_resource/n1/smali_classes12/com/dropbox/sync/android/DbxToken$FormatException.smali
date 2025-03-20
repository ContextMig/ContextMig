.class final Lcom/dropbox/sync/android/DbxToken$FormatException;
.super Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;
.source "DbxToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/sync/android/DbxToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatException"
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;)V
    .locals 1
    .param p1, "e"    # Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;-><init>(Ljava/lang/String;)V

    return-void
.end method
