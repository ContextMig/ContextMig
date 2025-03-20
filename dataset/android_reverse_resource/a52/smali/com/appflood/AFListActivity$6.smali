.class final Lcom/appflood/AFListActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/AFListActivity;


# direct methods
.method constructor <init>(Lcom/appflood/AFListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTabChanged(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Game"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$6;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    goto :goto_0
.end method
