.class public Lcom/fsck/k9/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field private permanentFailure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 15
    iput-boolean p2, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "perm"    # Z
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 23
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 24
    iput-boolean p2, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 25
    return-void
.end method


# virtual methods
.method public isPermanentFailure()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    return v0
.end method

.method public setPermanentFailure(Z)V
    .locals 0
    .param p1, "permanentFailure"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    .line 34
    return-void
.end method
