.class final Lcom/appflood/AFBannerView$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFBannerView;->setShowDelegate(Lcom/appflood/AppFlood$AFBannerShowDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/Timer;

.field private synthetic b:Lcom/appflood/AFBannerView;


# direct methods
.method constructor <init>(Lcom/appflood/AFBannerView;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    iput-object p2, p0, Lcom/appflood/AFBannerView$1;->a:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " run  shown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->isShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-virtual {v0}, Lcom/appflood/AFBannerView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-static {v0}, Lcom/appflood/AFBannerView;->access$000(Lcom/appflood/AFBannerView;)Lcom/appflood/AppFlood$AFBannerShowDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFBannerView$1;->b:Lcom/appflood/AFBannerView;

    invoke-static {v0}, Lcom/appflood/AFBannerView;->access$000(Lcom/appflood/AFBannerView;)Lcom/appflood/AppFlood$AFBannerShowDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/appflood/AppFlood$AFBannerShowDelegate;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/appflood/AFBannerView$1;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method
