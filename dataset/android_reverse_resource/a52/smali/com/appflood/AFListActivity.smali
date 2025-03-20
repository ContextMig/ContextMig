.class public Lcom/appflood/AFListActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appflood/AFListActivity$a;,
        Lcom/appflood/AFListActivity$b;,
        Lcom/appflood/AFListActivity$c;
    }
.end annotation


# instance fields
.field private A:Lcom/appflood/c/g;

.field a:F

.field b:F

.field c:Landroid/widget/RelativeLayout;

.field d:Landroid/widget/RelativeLayout;

.field e:Landroid/widget/ImageView;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field i:Landroid/graphics/Bitmap;

.field j:Landroid/graphics/Bitmap;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Lcom/appflood/AFListActivity$a;

.field r:Lcom/appflood/AFListActivity$a;

.field s:Lcom/appflood/AFListActivity$a;

.field t:Landroid/view/View;

.field u:Landroid/view/View;

.field v:I

.field w:F

.field x:I

.field y:Landroid/widget/TabHost;

.field private z:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/high16 v0, 0x43f00000    # 480.0f

    iput v0, p0, Lcom/appflood/AFListActivity;->z:F

    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/appflood/AFListActivity;->a:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/appflood/AFListActivity;->b:F

    iput-object v1, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->d:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->e:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->i:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->j:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->q:Lcom/appflood/AFListActivity$a;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->r:Lcom/appflood/AFListActivity$a;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->s:Lcom/appflood/AFListActivity$a;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->t:Landroid/view/View;

    iput-object v1, p0, Lcom/appflood/AFListActivity;->u:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lcom/appflood/AFListActivity;->v:I

    const/high16 v0, 0x41c80000    # 25.0f

    iput v0, p0, Lcom/appflood/AFListActivity;->w:F

    const/16 v0, 0x14

    iput v0, p0, Lcom/appflood/AFListActivity;->x:I

    return-void
.end method

.method static synthetic a(Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    const-string v0, "show_cb_url_copy"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " list "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v0, "show_cb_url_copy"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "show_cb_url"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "show_cb_url_copy"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newbg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appflood/c/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appflood/c/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "game"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appflood/c/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appflood/c/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->n:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gameP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appflood/c/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appflood/c/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->p:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/appflood/AFListActivity;->A:Lcom/appflood/c/g;

    iget-object v0, v0, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/appflood/AFListActivity;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/appflood/AFListActivity;->A:Lcom/appflood/c/g;

    iget-object v0, v0, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/appflood/AFListActivity;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/appflood/AFListActivity;->A:Lcom/appflood/c/g;

    iget v1, p0, Lcom/appflood/AFListActivity;->v:I

    invoke-virtual {v0, v1}, Lcom/appflood/c/g;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/appflood/AFListActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game length + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFListActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/appflood/AFListActivity;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appData lenth + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFListActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->d(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/appflood/AFListActivity;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alldata length + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/AFListActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->d(Ljava/lang/String;)V

    :cond_2
    iget v0, p0, Lcom/appflood/AFListActivity;->v:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/appflood/AFListActivity;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/appflood/AFListActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/appflood/AFListActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/appflood/c/e;->a(ZI)V

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->b()V

    :goto_1
    return-void

    :cond_4
    const-string v0, "{1}"

    const-string v1, "50"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appflood/AFListActivity;->k:Ljava/lang/String;

    const-string v1, "55"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appflood/AFListActivity;->l:Ljava/lang/String;

    const-string v1, "51"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appflood/AFListActivity;->m:Ljava/lang/String;

    const-string v1, "52"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appflood/AFListActivity;->n:Ljava/lang/String;

    const-string v1, "53"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appflood/AFListActivity;->o:Ljava/lang/String;

    const-string v1, "54"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/appflood/AFListActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/appflood/c/e;->a(ZI)V

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->b()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/appflood/c/e;->a(ZI)V

    new-instance v0, Lcom/appflood/AFListActivity$8;

    invoke-direct {v0, p0}, Lcom/appflood/AFListActivity$8;-><init>(Lcom/appflood/AFListActivity;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method final b()V
    .locals 5

    const-wide/16 v3, 0x1f4

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/appflood/AFListActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->i:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/appflood/AFListActivity;->j:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/appflood/AFListActivity;->a:F

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/appflood/AFListActivity$9;

    invoke-direct {v0, p0}, Lcom/appflood/AFListActivity$9;-><init>(Lcom/appflood/AFListActivity;)V

    invoke-static {v0, v3, v4}, Lcom/appflood/c/f;->a(Ljava/util/TimerTask;J)V

    :try_start_0
    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "type"

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appflood/c/e;->a(ZLorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "error in fireEventDelegate"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/high16 v9, 0x42680000    # 58.0f

    const/high16 v7, 0x41200000    # 10.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " appflood connected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/appflood/AppFlood;->isConnected()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " request  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/appflood/c/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/appflood/AppFlood;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/appflood/c/d;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/appflood/e/c;->a(Landroid/content/Context;)V

    invoke-static {p0, v2}, Lcom/appflood/c/f;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/appflood/c/f;->a()V

    const-string v0, "token"

    invoke-static {p0, v0}, Lcom/appflood/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->q:Ljava/lang/String;

    const-string v0, "static_url"

    invoke-static {p0, v0}, Lcom/appflood/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->t:Ljava/lang/String;

    const-string v0, "get_list"

    invoke-static {p0, v0}, Lcom/appflood/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appflood/c/d;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " close activity: load data failed"

    invoke-static {v0}, Lcom/appflood/e/j;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->finish()V

    :cond_0
    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/AFListActivity;->A:Lcom/appflood/c/g;

    invoke-virtual {p0, v1}, Lcom/appflood/AFListActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_10

    const-string v0, "isFull"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v0, "isPortrait"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "showType"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/appflood/AFListActivity;->v:I

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    const/16 v5, 0x400

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    if-eqz v0, :cond_6

    sget v0, Lcom/appflood/e/c;->j:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_5

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/appflood/AFListActivity;->setRequestedOrientation(I)V

    :goto_1
    sget v0, Lcom/appflood/e/c;->j:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_2

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/appflood/AFListActivity;->w:F

    const/16 v0, 0xf

    iput v0, p0, Lcom/appflood/AFListActivity;->x:I

    :cond_2
    sget v0, Lcom/appflood/e/c;->j:I

    const/4 v3, 0x4

    if-ge v0, v3, :cond_3

    iget v0, p0, Lcom/appflood/AFListActivity;->v:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_8

    iput v1, p0, Lcom/appflood/AFListActivity;->v:I

    :cond_3
    :goto_2
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iput v3, p0, Lcom/appflood/AFListActivity;->z:F

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/appflood/AFListActivity;->a:F

    iget v0, p0, Lcom/appflood/AFListActivity;->z:F

    iget v3, p0, Lcom/appflood/AFListActivity;->a:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_9

    iget v0, p0, Lcom/appflood/AFListActivity;->z:F

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFListActivity;->b:F

    :goto_3
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFListActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/appflood/AFListActivity;->d:Landroid/widget/RelativeLayout;

    const/16 v3, 0xca

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFListActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/appflood/AFListActivity;->e:Landroid/widget/ImageView;

    iget v3, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v4, v7

    float-to-int v4, v4

    const/high16 v5, 0x41d00000    # 26.0f

    iget v6, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42840000    # 66.0f

    iget v4, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/high16 v4, 0x42480000    # 50.0f

    iget v5, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/appflood/AFListActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFListActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity;->e:Landroid/widget/ImageView;

    new-instance v3, Lcom/appflood/AFListActivity$3;

    invoke-direct {v3, p0}, Lcom/appflood/AFListActivity$3;-><init>(Lcom/appflood/AFListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFListActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v3, 0x1020004

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setId(I)V

    new-instance v3, Lcom/appflood/b/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "noconnection.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/appflood/b/b;->a(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/appflood/AFListActivity;->v:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/appflood/AFListActivity;->v:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    :cond_4
    new-instance v0, Lcom/appflood/AFListActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/appflood/AFListActivity$a;-><init>(Lcom/appflood/AFListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFListActivity;->r:Lcom/appflood/AFListActivity$a;

    new-instance v0, Lcom/appflood/AFListActivity$a;

    invoke-direct {v0, p0, p0}, Lcom/appflood/AFListActivity$a;-><init>(Lcom/appflood/AFListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/AFListActivity;->s:Lcom/appflood/AFListActivity$a;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v4, Landroid/widget/TabWidget;

    invoke-direct {v4, p0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;)V

    const v5, 0x1020013

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/high16 v7, 0x42820000    # 65.0f

    iget v8, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v5, 0x1020011

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v6, 0x42800000    # 64.0f

    iget v7, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/appflood/AFListActivity;->t:Landroid/view/View;

    new-instance v4, Landroid/view/View;

    invoke-direct {v4, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/appflood/AFListActivity;->u:Landroid/view/View;

    new-instance v4, Landroid/widget/TabHost;

    invoke-direct {v4, p0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    const v5, 0x1020012

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setId(I)V

    iget-object v4, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v4, v0, v3}, Landroid/widget/TabHost;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    iget-object v0, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    const-string v3, "Game"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v3, Lcom/appflood/AFListActivity$4;

    invoke-direct {v3, p0}, Lcom/appflood/AFListActivity$4;-><init>(Lcom/appflood/AFListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v0, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    const-string v4, "App"

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v4, Lcom/appflood/AFListActivity$5;

    invoke-direct {v4, p0}, Lcom/appflood/AFListActivity$5;-><init>(Lcom/appflood/AFListActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v5, "setIndicator"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/view/View;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/appflood/AFListActivity;->t:Landroid/view/View;

    aput-object v7, v5, v6

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/appflood/AFListActivity;->u:Landroid/view/View;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    :try_start_2
    iget-object v0, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    new-instance v3, Lcom/appflood/AFListActivity$6;

    invoke-direct {v3, p0}, Lcom/appflood/AFListActivity$6;-><init>(Lcom/appflood/AFListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v3, v9

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFListActivity;->y:Landroid/widget/TabHost;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x41f00000    # 30.0f

    iget v6, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/appflood/AFListActivity;->setContentView(Landroid/view/View;)V

    invoke-static {}, Lcom/appflood/c/g;->a()Lcom/appflood/c/g;

    move-result-object v0

    iget v3, p0, Lcom/appflood/AFListActivity;->v:I

    packed-switch v3, :pswitch_data_0

    move v0, v2

    :goto_6
    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->a()V

    :goto_7
    new-instance v0, Lcom/appflood/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newbg2.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appflood/AFListActivity$1;

    invoke-direct {v1, p0}, Lcom/appflood/AFListActivity$1;-><init>(Lcom/appflood/AFListActivity;)V

    iput-object v1, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V

    new-instance v0, Lcom/appflood/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/appflood/c/d;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/appflood/c/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/appflood/AFListActivity$2;

    invoke-direct {v1, p0}, Lcom/appflood/AFListActivity$2;-><init>(Lcom/appflood/AFListActivity;)V

    iput-object v1, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_8
    return-void

    :cond_5
    invoke-virtual {p0, v1}, Lcom/appflood/AFListActivity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    :cond_6
    sget v0, Lcom/appflood/e/c;->j:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/appflood/AFListActivity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, v2}, Lcom/appflood/AFListActivity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/appflood/AFListActivity;->v:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iput v2, p0, Lcom/appflood/AFListActivity;->v:I

    goto/16 :goto_2

    :cond_9
    :try_start_3
    iget v0, p0, Lcom/appflood/AFListActivity;->a:F

    const/high16 v3, 0x44480000    # 800.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/appflood/AFListActivity;->b:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    const-string v1, "oncreat error"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_8

    :catch_1
    move-exception v0

    :try_start_4
    const-string v5, "No such method"

    invoke-static {v0, v5}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_2
    move-exception v0

    const-string v5, "Illegal argument"

    invoke-static {v0, v5}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    const-string v5, "Illegal access"

    invoke-static {v0, v5}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_4
    move-exception v0

    const-string v5, "Invoke failed"

    invoke-static {v0, v5}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    new-instance v3, Lcom/appflood/AFListActivity$a;

    invoke-direct {v3, p0, p0}, Lcom/appflood/AFListActivity$a;-><init>(Lcom/appflood/AFListActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/appflood/AFListActivity;->q:Lcom/appflood/AFListActivity$a;

    iget-object v3, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/appflood/AFListActivity;->q:Lcom/appflood/AFListActivity$a;

    invoke-virtual {v3, v0}, Lcom/appflood/AFListActivity$a;->setEmptyView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/appflood/AFListActivity;->a:F

    iget v5, p0, Lcom/appflood/AFListActivity;->b:F

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x3

    const/16 v4, 0xca

    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v3, p0, Lcom/appflood/AFListActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/appflood/AFListActivity;->q:Lcom/appflood/AFListActivity$a;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v0, v3}, Lcom/appflood/c/g;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v1

    goto/16 :goto_6

    :cond_b
    move v0, v2

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, v0, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    move v0, v1

    goto/16 :goto_6

    :cond_c
    move v0, v2

    goto/16 :goto_6

    :pswitch_2
    iget-object v0, v0, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    move v0, v1

    goto/16 :goto_6

    :cond_d
    move v0, v2

    goto/16 :goto_6

    :pswitch_3
    iget-object v3, v0, Lcom/appflood/c/g;->f:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    iget-object v0, v0, Lcom/appflood/c/g;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    move v0, v1

    goto/16 :goto_6

    :cond_e
    move v0, v2

    goto/16 :goto_6

    :cond_f
    iget-object v0, p0, Lcom/appflood/AFListActivity;->A:Lcom/appflood/c/g;

    iget v1, p0, Lcom/appflood/AFListActivity;->v:I

    new-instance v2, Lcom/appflood/AFListActivity$7;

    invoke-direct {v2, p0}, Lcom/appflood/AFListActivity$7;-><init>(Lcom/appflood/AFListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/appflood/c/g;->a(ILcom/appflood/AppFlood$AFRequestDelegate;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_7

    :cond_10
    move v0, v1

    move v3, v1

    goto/16 :goto_0

    :array_0
    .array-data 4
        -0x1f1913
        0xe0e6ed
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/appflood/AFListActivity;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
