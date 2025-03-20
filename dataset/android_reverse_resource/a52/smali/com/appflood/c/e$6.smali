.class public final Lcom/appflood/c/e$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/c/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Lcom/appflood/c/e;


# direct methods
.method public constructor <init>(Lcom/appflood/c/e;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/e$6;->b:Lcom/appflood/c/e;

    iput-object p2, p0, Lcom/appflood/c/e$6;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/appflood/c/e$6;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appflood/AFListActivity$c$1;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appflood/c/e$6;->a:Landroid/app/Activity;

    const-class v2, Lcom/appflood/AFInterstitialActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isFull"

    iget-object v2, p0, Lcom/appflood/c/e$6;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appflood/c/e$6;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appflood/c/e$6;->b:Lcom/appflood/c/e;

    iget-object v1, p0, Lcom/appflood/c/e$6;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/appflood/c/e;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
