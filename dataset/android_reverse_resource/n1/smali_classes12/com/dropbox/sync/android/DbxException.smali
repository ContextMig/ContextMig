.class public Lcom/dropbox/sync/android/DbxException;
.super Ljava/io/IOException;
.source "DbxException.java"

# interfaces
.implements Lcom/dropbox/sync/android/DbxThrowable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxException$1;,
        Lcom/dropbox/sync/android/DbxException$PackageManagerOperationFailedException;,
        Lcom/dropbox/sync/android/DbxException$ReadOnly;,
        Lcom/dropbox/sync/android/DbxException$Interrupted;,
        Lcom/dropbox/sync/android/DbxException$Cancelled;,
        Lcom/dropbox/sync/android/DbxException$RetryLater;,
        Lcom/dropbox/sync/android/DbxException$NoThumb;,
        Lcom/dropbox/sync/android/DbxException$Response;,
        Lcom/dropbox/sync/android/DbxException$Request;,
        Lcom/dropbox/sync/android/DbxException$Quota;,
        Lcom/dropbox/sync/android/DbxException$Unauthorized;,
        Lcom/dropbox/sync/android/DbxException$Server;,
        Lcom/dropbox/sync/android/DbxException$Ssl;,
        Lcom/dropbox/sync/android/DbxException$NetworkConnection;,
        Lcom/dropbox/sync/android/DbxException$NetworkTimeout;,
        Lcom/dropbox/sync/android/DbxException$Network;,
        Lcom/dropbox/sync/android/DbxException$FileIO;,
        Lcom/dropbox/sync/android/DbxException$Disallowed;,
        Lcom/dropbox/sync/android/DbxException$DiskSpace;,
        Lcom/dropbox/sync/android/DbxException$Parent;,
        Lcom/dropbox/sync/android/DbxException$AlreadyOpen;,
        Lcom/dropbox/sync/android/DbxException$Exists;,
        Lcom/dropbox/sync/android/DbxException$NotFound;,
        Lcom/dropbox/sync/android/DbxException$InvalidOperation;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x1L


# instance fields
.field private final mErr:Lcom/dropbox/sync/android/DbxError;

.field private final mUserError:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Lcom/dropbox/sync/android/DbxException$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/dropbox/sync/android/DbxException$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxException$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/dropbox/sync/android/DbxException$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 20
    if-eqz p4, :cond_0

    .line 21
    invoke-virtual {p0, p4}, Lcom/dropbox/sync/android/DbxException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxException;->mErr:Lcom/dropbox/sync/android/DbxError;

    .line 24
    sget-object v0, Lcom/dropbox/sync/android/DbxError$Category;->CHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxError;->getCategory()Lcom/dropbox/sync/android/DbxError$Category;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 25
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxException;->mUserError:Ljava/lang/String;

    .line 26
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/dropbox/sync/android/DbxException$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/Throwable;
    .param p5, "x4"    # Lcom/dropbox/sync/android/DbxException$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/Throwable;Lcom/dropbox/sync/android/DbxException$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Throwable;
    .param p4, "x3"    # Lcom/dropbox/sync/android/DbxException$1;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public rethrow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxException;
        }
    .end annotation

    .prologue
    .line 46
    throw p0
.end method
