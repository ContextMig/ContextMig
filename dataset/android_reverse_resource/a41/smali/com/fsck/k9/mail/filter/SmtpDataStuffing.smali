.class public Lcom/fsck/k9/mail/filter/SmtpDataStuffing;
.super Ljava/io/FilterOutputStream;
.source "SmtpDataStuffing.java"


# static fields
.field private static final STATE_CR:I = 0x1

.field private static final STATE_CRLF:I = 0x2

.field private static final STATE_NORMAL:I


# instance fields
.field private state:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12
    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    .line 16
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 21
    iput v2, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    .line 31
    :goto_0
    invoke-super {p0, p1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 32
    return-void

    .line 22
    :cond_0
    iget v0, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 23
    iput v3, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    goto :goto_0

    .line 24
    :cond_1
    iget v0, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    if-ne v0, v3, :cond_2

    if-ne p1, v4, :cond_2

    .line 26
    invoke-super {p0, v4}, Ljava/io/FilterOutputStream;->write(I)V

    .line 27
    iput v1, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    goto :goto_0

    .line 29
    :cond_2
    iput v1, p0, Lcom/fsck/k9/mail/filter/SmtpDataStuffing;->state:I

    goto :goto_0
.end method
