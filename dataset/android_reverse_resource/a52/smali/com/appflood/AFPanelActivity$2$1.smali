.class final Lcom/appflood/AFPanelActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFPanelActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFPanelActivity$2;


# direct methods
.method constructor <init>(Lcom/appflood/AFPanelActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFPanelActivity$2$1;->a:Lcom/appflood/AFPanelActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appflood/AFPanelActivity$2$1;->a:Lcom/appflood/AFPanelActivity$2;

    iget-object v0, v0, Lcom/appflood/AFPanelActivity$2;->a:Lcom/appflood/AFPanelActivity;

    invoke-static {v0}, Lcom/appflood/AFPanelActivity;->b(Lcom/appflood/AFPanelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/appflood/AFPanelActivity$2$1;->a:Lcom/appflood/AFPanelActivity$2;

    iget-object v0, v0, Lcom/appflood/AFPanelActivity$2;->a:Lcom/appflood/AFPanelActivity;

    invoke-static {v0}, Lcom/appflood/AFPanelActivity;->c(Lcom/appflood/AFPanelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/appflood/AFPanelActivity$2$1;->a:Lcom/appflood/AFPanelActivity$2;

    iget-object v0, v0, Lcom/appflood/AFPanelActivity$2;->a:Lcom/appflood/AFPanelActivity;

    invoke-virtual {v0}, Lcom/appflood/AFPanelActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
