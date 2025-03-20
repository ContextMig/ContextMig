.class public Lcom/fsck/k9/mailstore/UnavailableStorageException;
.super Lcom/fsck/k9/mail/MessagingException;
.source "UnavailableStorageException.java"


# static fields
.field private static final serialVersionUID:J = 0x12b60208c0610878L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 11
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/mailstore/UnavailableStorageException;-><init>(Ljava/lang/String;Z)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/fsck/k9/mailstore/UnavailableStorageException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Z)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    .line 25
    return-void
.end method
