.class final enum Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$1;
.super Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;
.source "SignSafeOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/filter/SignSafeOutputStream$1;)V

    return-void
.end method


# virtual methods
.method public nextState(I)Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 101
    packed-switch p1, :pswitch_data_0

    .line 105
    sget-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$1;->INIT:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    :goto_0
    return-object v0

    .line 103
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$1;->lf_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
