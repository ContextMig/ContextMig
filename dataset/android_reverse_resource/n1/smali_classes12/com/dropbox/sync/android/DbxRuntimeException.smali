.class public Lcom/dropbox/sync/android/DbxRuntimeException;
.super Ljava/lang/RuntimeException;
.source "DbxRuntimeException.java"

# interfaces
.implements Lcom/dropbox/sync/android/DbxThrowable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/sync/android/DbxRuntimeException$1;,
        Lcom/dropbox/sync/android/DbxRuntimeException$NotCached;,
        Lcom/dropbox/sync/android/DbxRuntimeException$System;,
        Lcom/dropbox/sync/android/DbxRuntimeException$Memory;,
        Lcom/dropbox/sync/android/DbxRuntimeException$AccessDenied;,
        Lcom/dropbox/sync/android/DbxRuntimeException$BadState;,
        Lcom/dropbox/sync/android/DbxRuntimeException$IllegalArgument;,
        Lcom/dropbox/sync/android/DbxRuntimeException$BadIndex;,
        Lcom/dropbox/sync/android/DbxRuntimeException$SizeLimit;,
        Lcom/dropbox/sync/android/DbxRuntimeException$BadType;,
        Lcom/dropbox/sync/android/DbxRuntimeException$Deleted;,
        Lcom/dropbox/sync/android/DbxRuntimeException$Closed;,
        Lcom/dropbox/sync/android/DbxRuntimeException$Shutdown;,
        Lcom/dropbox/sync/android/DbxRuntimeException$Cache;,
        Lcom/dropbox/sync/android/DbxRuntimeException$Internal;
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

    .line 34
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/dropbox/sync/android/DbxRuntimeException$1;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/dropbox/sync/android/DbxRuntimeException$1;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "userError"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 18
    if-eqz p4, :cond_0

    .line 19
    invoke-virtual {p0, p4}, Lcom/dropbox/sync/android/DbxRuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/dropbox/sync/android/DbxRuntimeException;->mErr:Lcom/dropbox/sync/android/DbxError;

    .line 22
    sget-object v0, Lcom/dropbox/sync/android/DbxError$Category;->UNCHECKED:Lcom/dropbox/sync/android/DbxError$Category;

    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxError;->getCategory()Lcom/dropbox/sync/android/DbxError$Category;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/dropbox/sync/android/CoreAssert;->isTrue(Z)V

    .line 23
    iput-object p3, p0, Lcom/dropbox/sync/android/DbxRuntimeException;->mUserError:Ljava/lang/String;

    .line 24
    return-void

    .line 22
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "err"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/Throwable;Lcom/dropbox/sync/android/DbxRuntimeException$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dropbox/sync/android/DbxError;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/Throwable;
    .param p4, "x3"    # Lcom/dropbox/sync/android/DbxRuntimeException$1;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/sync/android/DbxRuntimeException;-><init>(Lcom/dropbox/sync/android/DbxError;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public rethrow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/sync/android/DbxRuntimeException;
        }
    .end annotation

    .prologue
    .line 44
    throw p0
.end method
