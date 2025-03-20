.class final enum Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$2;
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
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;-><init>(Ljava/lang/String;ILcom/fsck/k9/mail/filter/SignSafeOutputStream$1;)V

    return-void
.end method


# virtual methods
.method public nextState(I)Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 119
    :pswitch_0
    sget-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$2;->INIT:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    :goto_0
    return-object v0

    .line 115
    :pswitch_1
    sget-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$2;->cr_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    goto :goto_0

    .line 117
    :pswitch_2
    sget-object v0, Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State$2;->lf_FROM:Lcom/fsck/k9/mail/filter/SignSafeOutputStream$State;

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
