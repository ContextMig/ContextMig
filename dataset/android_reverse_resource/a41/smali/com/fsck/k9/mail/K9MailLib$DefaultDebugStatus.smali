.class Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;
.super Ljava/lang/Object;
.source "K9MailLib.java"

# interfaces
.implements Lcom/fsck/k9/mail/K9MailLib$WritableDebugStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/K9MailLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultDebugStatus"
.end annotation


# instance fields
.field private enabled:Z

.field private sensitive:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fsck/k9/mail/K9MailLib$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fsck/k9/mail/K9MailLib$1;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public debugSensitive()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;->sensitive:Z

    return v0
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;->enabled:Z

    .line 93
    return-void
.end method

.method public setSensitive(Z)V
    .locals 0
    .param p1, "sensitive"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;->sensitive:Z

    .line 98
    return-void
.end method
