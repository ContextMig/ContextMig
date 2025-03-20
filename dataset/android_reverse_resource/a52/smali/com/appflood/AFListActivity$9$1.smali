.class final Lcom/appflood/AFListActivity$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFListActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFListActivity$9;


# direct methods
.method constructor <init>(Lcom/appflood/AFListActivity$9;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFListActivity$9$1;->a:Lcom/appflood/AFListActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appflood/AFListActivity$9$1;->a:Lcom/appflood/AFListActivity$9;

    iget-object v0, v0, Lcom/appflood/AFListActivity$9;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFListActivity$9$1;->a:Lcom/appflood/AFListActivity$9;

    iget-object v0, v0, Lcom/appflood/AFListActivity$9;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/appflood/AFListActivity$9$1;->a:Lcom/appflood/AFListActivity$9;

    iget-object v0, v0, Lcom/appflood/AFListActivity$9;->a:Lcom/appflood/AFListActivity;

    invoke-virtual {v0}, Lcom/appflood/AFListActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
