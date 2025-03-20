.class public Lcom/fsck/k9/mail/K9MailLib;
.super Ljava/lang/Object;
.source "K9MailLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;,
        Lcom/fsck/k9/mail/K9MailLib$WritableDebugStatus;,
        Lcom/fsck/k9/mail/K9MailLib$DebugStatus;
    }
.end annotation


# static fields
.field public static DEBUG_PROTOCOL_IMAP:Z = false

.field public static DEBUG_PROTOCOL_POP3:Z = false

.field public static DEBUG_PROTOCOL_SMTP:Z = false

.field public static DEBUG_PROTOCOL_WEBDAV:Z = false

.field public static final IDENTITY_HEADER:Ljava/lang/String; = "X-K9mail-Identity"

.field public static final PUSH_WAKE_LOCK_TIMEOUT:I = 0xea60

.field private static debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5
    new-instance v0, Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/K9MailLib$DefaultDebugStatus;-><init>(Lcom/fsck/k9/mail/K9MailLib$1;)V

    sput-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 17
    sput-boolean v2, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_SMTP:Z

    .line 23
    sput-boolean v2, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_IMAP:Z

    .line 29
    sput-boolean v2, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_POP3:Z

    .line 35
    sput-boolean v2, Lcom/fsck/k9/mail/K9MailLib;->DEBUG_PROTOCOL_WEBDAV:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->enabled()Z

    move-result v0

    return v0
.end method

.method public static isDebugSensitive()Z
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    invoke-interface {v0}, Lcom/fsck/k9/mail/K9MailLib$DebugStatus;->debugSensitive()Z

    move-result v0

    return v0
.end method

.method public static setDebug(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 52
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    instance-of v0, v0, Lcom/fsck/k9/mail/K9MailLib$WritableDebugStatus;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    check-cast v0, Lcom/fsck/k9/mail/K9MailLib$WritableDebugStatus;

    invoke-interface {v0, p0}, Lcom/fsck/k9/mail/K9MailLib$WritableDebugStatus;->setEnabled(Z)V

    .line 55
    :cond_0
    return-void
.end method

.method public static setDebugSensitive(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 46
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    instance-of v0, v0, Lcom/fsck/k9/mail/K9MailLib$WritableDebugStatus;

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    check-cast v0, Lcom/fsck/k9/mail/K9MailLib$WritableDebugStatus;

    invoke-interface {v0, p0}, Lcom/fsck/k9/mail/K9MailLib$WritableDebugStatus;->setSensitive(Z)V

    .line 49
    :cond_0
    return-void
.end method

.method public static setDebugStatus(Lcom/fsck/k9/mail/K9MailLib$DebugStatus;)V
    .locals 2
    .param p0, "status"    # Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .prologue
    .line 64
    if-nez p0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "status cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    sput-object p0, Lcom/fsck/k9/mail/K9MailLib;->debugStatus:Lcom/fsck/k9/mail/K9MailLib$DebugStatus;

    .line 68
    return-void
.end method
