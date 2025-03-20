.class public abstract Lcom/fsck/k9/mail/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field protected static final SOCKET_CONNECT_TIMEOUT:I = 0x2710

.field protected static final SOCKET_READ_TIMEOUT:I = 0x493e0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/fsck/k9/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method
