.class Landroid/support/v4/app/w$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/w;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/w;


# direct methods
.method constructor <init>(Landroid/support/v4/app/w;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/w$1;->a:Landroid/support/v4/app/w;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/w$1;->a:Landroid/support/v4/app/w;

    iget-boolean v0, v0, Landroid/support/v4/app/w;->mStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/w$1;->a:Landroid/support/v4/app/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->doReallyStop(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/app/w$1;->a:Landroid/support/v4/app/w;

    invoke-virtual {v0}, Landroid/support/v4/app/w;->onResumeFragments()V

    iget-object v0, p0, Landroid/support/v4/app/w$1;->a:Landroid/support/v4/app/w;

    iget-object v0, v0, Landroid/support/v4/app/w;->mFragments:Landroid/support/v4/app/aa;

    invoke-virtual {v0}, Landroid/support/v4/app/aa;->p()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
