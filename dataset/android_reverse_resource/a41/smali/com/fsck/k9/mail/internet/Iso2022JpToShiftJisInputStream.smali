.class Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;
.super Ljava/io/InputStream;
.source "Iso2022JpToShiftJisInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;
    }
.end annotation


# instance fields
.field private charset:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

.field private hasOut:Z

.field private mIn:Ljava/io/InputStream;

.field private out:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    sget-object v0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->ASCII:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->hasOut:Z

    .line 18
    iput-object p1, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    .line 19
    return-void
.end method


# virtual methods
.method public read()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x7f

    const/16 v5, 0x42

    const/16 v7, 0x21

    const/4 v6, 0x0

    .line 23
    iget-boolean v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->hasOut:Z

    if-eqz v4, :cond_1

    .line 24
    iput-boolean v6, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->hasOut:Z

    .line 25
    iget v0, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->out:I

    .line 72
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 28
    :cond_1
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 29
    .local v0, "in1":I
    :goto_1
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_9

    .line 30
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 31
    const/16 v4, 0x28

    if-ne v0, v4, :cond_5

    .line 32
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 33
    if-eq v0, v5, :cond_2

    const/16 v4, 0x4a

    if-ne v0, v4, :cond_3

    .line 34
    :cond_2
    sget-object v4, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->ASCII:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    .line 47
    :goto_2
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    .line 35
    :cond_3
    const/16 v4, 0x49

    if-ne v0, v4, :cond_4

    .line 36
    sget-object v4, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->JISX0201:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    goto :goto_2

    .line 38
    :cond_4
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v4, v6}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 39
    :cond_5
    const/16 v4, 0x24

    if-ne v0, v4, :cond_8

    .line 40
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 41
    const/16 v4, 0x40

    if-eq v0, v4, :cond_6

    if-ne v0, v5, :cond_7

    .line 42
    :cond_6
    sget-object v4, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->JISX0208:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    goto :goto_2

    .line 44
    :cond_7
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v4, v6}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 46
    :cond_8
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v4, v6}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 50
    :cond_9
    const/16 v4, 0xa

    if-eq v0, v4, :cond_a

    const/16 v4, 0xd

    if-ne v0, v4, :cond_b

    .line 51
    :cond_a
    sget-object v4, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->ASCII:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    iput-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    .line 53
    :cond_b
    if-lt v0, v7, :cond_0

    if-ge v0, v8, :cond_0

    .line 56
    sget-object v4, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$1;->$SwitchMap$com$fsck$k9$mail$internet$Iso2022JpToShiftJisInputStream$Charset:[I

    iget-object v5, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->charset:Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;

    invoke-virtual {v5}, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream$Charset;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 74
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 60
    :pswitch_1
    add-int/lit16 v0, v0, 0x80

    goto/16 :goto_0

    .line 62
    :pswitch_2
    iget-object v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 63
    .local v1, "in2":I
    if-lt v1, v7, :cond_c

    if-lt v1, v8, :cond_d

    .line 64
    :cond_c
    new-instance v4, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v4, v6}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    throw v4

    .line 66
    :cond_d
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v5, v4, 0x2

    const/16 v4, 0x5f

    if-ge v0, v4, :cond_e

    const/16 v4, 0x70

    :goto_3
    add-int v2, v5, v4

    .line 67
    .local v2, "out1":I
    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_f

    const/16 v4, 0x7e

    :goto_4
    add-int v3, v1, v4

    .line 69
    .local v3, "out2":I
    iput v3, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->out:I

    .line 70
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fsck/k9/mail/internet/Iso2022JpToShiftJisInputStream;->hasOut:Z

    move v0, v2

    .line 72
    goto/16 :goto_0

    .line 66
    .end local v2    # "out1":I
    .end local v3    # "out2":I
    :cond_e
    const/16 v4, 0xb0

    goto :goto_3

    .line 67
    .restart local v2    # "out1":I
    :cond_f
    const/16 v4, 0x60

    if-ge v1, v4, :cond_10

    const/16 v4, 0x1f

    goto :goto_4

    :cond_10
    const/16 v4, 0x20

    goto :goto_4

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
