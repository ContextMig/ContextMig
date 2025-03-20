.class final Lcom/appflood/AFBannerView$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFBannerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFBannerView;


# direct methods
.method constructor <init>(Lcom/appflood/AFBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttached to window "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v0}, Lcom/appflood/AFBannerView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    iget-object v1, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appflood/AFBannerView;->access$502(Lcom/appflood/AFBannerView;I)I

    iget-object v0, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    iget-object v1, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appflood/AFBannerView;->access$602(Lcom/appflood/AFBannerView;I)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1, v0}, Lcom/appflood/AFBannerView;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v1}, Lcom/appflood/AFBannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    aget v0, v0, v2

    sub-int/2addr v0, v1

    sget v2, Lcom/appflood/e/c;->h:I

    sub-int v1, v2, v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-virtual {v2}, Lcom/appflood/AFBannerView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x7

    :goto_0
    iget-object v1, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-static {v1}, Lcom/appflood/AFBannerView;->access$100(Lcom/appflood/AFBannerView;)Lcom/appflood/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-static {v2}, Lcom/appflood/AFBannerView;->access$500(Lcom/appflood/AFBannerView;)I

    move-result v2

    iget-object v3, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-static {v3}, Lcom/appflood/AFBannerView;->access$600(Lcom/appflood/AFBannerView;)I

    move-result v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/appflood/c/a;->a(III)V

    iget-object v0, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-static {v0}, Lcom/appflood/AFBannerView;->access$700(Lcom/appflood/AFBannerView;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    invoke-static {v0}, Lcom/appflood/AFBannerView;->access$700(Lcom/appflood/AFBannerView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/appflood/AFBannerView$3;->a:Lcom/appflood/AFBannerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appflood/AFBannerView;->access$702(Lcom/appflood/AFBannerView;Ljava/util/Timer;)Ljava/util/Timer;

    :cond_0
    return-void

    :cond_1
    if-ge v0, v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0
.end method
