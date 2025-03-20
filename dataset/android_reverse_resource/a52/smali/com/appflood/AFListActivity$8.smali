.class final Lcom/appflood/AFListActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/AFListActivity;->a()V
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

    iput-object p1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget v0, v0, Lcom/appflood/AFListActivity;->v:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget v0, v0, Lcom/appflood/AFListActivity;->v:I

    if-ne v0, v6, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    invoke-virtual {v0}, Lcom/appflood/AFListActivity;->b()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/appflood/AFListActivity;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/appflood/AFListActivity;->a(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/appflood/AFListActivity$b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v2, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v3, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v3, v3, Lcom/appflood/AFListActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/appflood/AFListActivity$b;-><init>(Lcom/appflood/AFListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/appflood/AFListActivity$b;

    iget-object v2, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v3, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v4, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v4, v4, Lcom/appflood/AFListActivity;->h:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/appflood/AFListActivity$b;-><init>(Lcom/appflood/AFListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v2, v2, Lcom/appflood/AFListActivity;->r:Lcom/appflood/AFListActivity$a;

    invoke-virtual {v2, v0}, Lcom/appflood/AFListActivity$a;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->s:Lcom/appflood/AFListActivity$a;

    invoke-virtual {v0, v1}, Lcom/appflood/AFListActivity$a;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget v0, v0, Lcom/appflood/AFListActivity;->v:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v0, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :goto_1
    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->r:Lcom/appflood/AFListActivity$a;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->s:Lcom/appflood/AFListActivity$a;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget v0, v0, Lcom/appflood/AFListActivity;->v:I

    if-ne v0, v6, :cond_4

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    :goto_2
    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/appflood/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newclose.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, v0, Lcom/appflood/AFListActivity;->a:F

    invoke-direct {v1, v5, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, v0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v0, v0, Lcom/appflood/AFListActivity;->f:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/appflood/AFListActivity;->a(Ljava/util/ArrayList;)V

    new-instance v0, Lcom/appflood/AFListActivity$b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v2, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v3, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v3, v3, Lcom/appflood/AFListActivity;->f:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/appflood/AFListActivity$b;-><init>(Lcom/appflood/AFListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->q:Lcom/appflood/AFListActivity$a;

    invoke-virtual {v1, v0}, Lcom/appflood/AFListActivity$a;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appflood/AFListActivity$8;->a:Lcom/appflood/AFListActivity;

    iget-object v1, v1, Lcom/appflood/AFListActivity;->q:Lcom/appflood/AFListActivity$a;

    invoke-virtual {v0, v1}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    goto/16 :goto_2
.end method
