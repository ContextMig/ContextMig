.class public final Lcom/appflood/d/a;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/appflood/b/b$a;
.implements Lcom/appflood/d/b$a;
.implements Lcom/appflood/d/b$b;
.implements Lcom/appflood/d/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appflood/d/a$5;,
        Lcom/appflood/d/a$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Lcom/appflood/c/b;

.field private G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private K:Lcom/appflood/mraid/AFBannerWebView;

.field private L:Z

.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Lcom/appflood/d/a$a;

.field h:Lcom/appflood/d/b;

.field i:Z

.field j:Landroid/widget/ImageView;

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Z

.field private u:Landroid/view/SurfaceView;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/appflood/f/d;

.field private y:Landroid/widget/Button;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/appflood/mraid/AFBannerWebView;Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/appflood/d/a;->b:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->c:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->d:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->e:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->f:Z

    iput-boolean v0, p0, Lcom/appflood/d/a;->i:Z

    iput v2, p0, Lcom/appflood/d/a;->k:I

    iput v2, p0, Lcom/appflood/d/a;->l:I

    iput v2, p0, Lcom/appflood/d/a;->m:I

    iput v2, p0, Lcom/appflood/d/a;->n:I

    iput v2, p0, Lcom/appflood/d/a;->A:I

    iput v2, p0, Lcom/appflood/d/a;->B:I

    iput v2, p0, Lcom/appflood/d/a;->C:I

    iput v2, p0, Lcom/appflood/d/a;->D:I

    iput v2, p0, Lcom/appflood/d/a;->o:I

    iput v2, p0, Lcom/appflood/d/a;->E:I

    iput v2, p0, Lcom/appflood/d/a;->p:I

    iput v2, p0, Lcom/appflood/d/a;->q:I

    iput v2, p0, Lcom/appflood/d/a;->r:I

    iput v2, p0, Lcom/appflood/d/a;->s:I

    iput-boolean v2, p0, Lcom/appflood/d/a;->t:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->L:Z

    iput-object p2, p0, Lcom/appflood/d/a;->K:Lcom/appflood/mraid/AFBannerWebView;

    iput-boolean v0, p0, Lcom/appflood/d/a;->t:Z

    const-string v0, "url"

    const-string v1, ""

    invoke-static {p3, v0, v1}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appflood/d/a;->z:Ljava/lang/String;

    const-string v0, "width"

    invoke-static {p3, v0, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->m:I

    const-string v0, "height"

    invoke-static {p3, v0, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->n:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/appflood/d/a;->b:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->c:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->d:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->e:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->f:Z

    iput-boolean v4, p0, Lcom/appflood/d/a;->i:Z

    iput v2, p0, Lcom/appflood/d/a;->k:I

    iput v2, p0, Lcom/appflood/d/a;->l:I

    iput v2, p0, Lcom/appflood/d/a;->m:I

    iput v2, p0, Lcom/appflood/d/a;->n:I

    iput v2, p0, Lcom/appflood/d/a;->A:I

    iput v2, p0, Lcom/appflood/d/a;->B:I

    iput v2, p0, Lcom/appflood/d/a;->C:I

    iput v2, p0, Lcom/appflood/d/a;->D:I

    iput v2, p0, Lcom/appflood/d/a;->o:I

    iput v2, p0, Lcom/appflood/d/a;->E:I

    iput v2, p0, Lcom/appflood/d/a;->p:I

    iput v2, p0, Lcom/appflood/d/a;->q:I

    iput v2, p0, Lcom/appflood/d/a;->r:I

    iput v2, p0, Lcom/appflood/d/a;->s:I

    iput-boolean v2, p0, Lcom/appflood/d/a;->t:Z

    iput-boolean v2, p0, Lcom/appflood/d/a;->L:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/appflood/d/a;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/appflood/d/a;->G:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/appflood/d/a;->G:Ljava/util/HashMap;

    const-string v1, "VAST"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Ad"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/appflood/e/j;->a(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/appflood/d/a;->H:Ljava/util/HashMap;

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/appflood/d/a;->H:Ljava/util/HashMap;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appflood/d/a;->H:Ljava/util/HashMap;

    const-string v1, "InLine"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v3, "Impression"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Creative"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/appflood/d/a;->J:Ljava/util/ArrayList;

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/appflood/d/a;->d()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/appflood/d/a;->d:Z

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/appflood/d/a;->H:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/appflood/d/a;->H:Ljava/util/HashMap;

    goto :goto_0

    :cond_4
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/appflood/d/a;->H:Ljava/util/HashMap;

    goto :goto_0

    :cond_5
    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appflood/d/a;->J:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/appflood/d/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-static {v1}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v4, v0, Ljava/util/HashMap;

    if-eqz v4, :cond_4

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method

.method private c(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/appflood/d/a;->p:I

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/appflood/d/a;->q:I

    return-void
.end method

.method private d()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/appflood/d/a;->I:Ljava/util/HashMap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appflood/d/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/appflood/d/a;->I:Ljava/util/HashMap;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appflood/d/a;->I:Ljava/util/HashMap;

    const-string v1, "Linear"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/appflood/d/a;->I:Ljava/util/HashMap;

    const-string v1, "Linear"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "Duration"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/appflood/e/j;->h(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/appflood/d/a;->s:I

    const-string v1, "MediaFiles"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0

    :cond_1
    :goto_1
    const-string v0, "width"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->m:I

    const-string v0, "height"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->n:I

    const-string v0, "data"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/appflood/d/a;->z:Ljava/lang/String;

    const-string v0, "TrackingEvents"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_a

    :cond_2
    const-string v1, "Tracking"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/util/ArrayList;

    :goto_2
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    const-string v0, "event"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "data"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/appflood/d/a;->J:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/appflood/d/a;->I:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/appflood/d/a;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/appflood/d/a;->J:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/appflood/d/a;->I:Ljava/util/HashMap;

    goto/16 :goto_0

    :cond_5
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v3

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v5, "flash"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "flv"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v2, "mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    iput-boolean v6, p0, Lcom/appflood/d/a;->d:Z

    :cond_7
    :goto_5
    move-object v2, v0

    goto :goto_4

    :cond_8
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/appflood/d/a;->d:Z

    goto :goto_5

    :cond_9
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_c

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    goto/16 :goto_2

    :cond_a
    const-string v0, "VideoClicks"

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/appflood/d/a;->b(Ljava/util/HashMap;)V

    :goto_6
    iget-object v0, p0, Lcom/appflood/d/a;->I:Ljava/util/HashMap;

    const-string v1, "CompanionAds"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    return-void

    :cond_b
    iget-object v0, p0, Lcom/appflood/d/a;->I:Ljava/util/HashMap;

    const-string v1, "NonLinearAds"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    move-object v0, v3

    goto/16 :goto_2

    :cond_d
    move-object v2, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/appflood/mraid/A;->g:Lcom/appflood/mraid/A;

    invoke-virtual {p0, v0}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appflood/d/a;->f:Z

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->d()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    const/4 v1, 0x1

    if-lez p1, :cond_0

    iput-boolean v1, p0, Lcom/appflood/d/a;->e:Z

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    invoke-virtual {v0, p1}, Lcom/appflood/d/a$a;->b(I)V

    invoke-virtual {p0}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method final a(II)V
    .locals 8

    const/4 v7, 0x1

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/appflood/d/a;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/appflood/d/a;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/appflood/d/a;->l:I

    int-to-float v0, v0

    iget v1, p0, Lcom/appflood/d/a;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/appflood/d/a;->D:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/appflood/d/a;->E:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/appflood/d/a;->C:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetLayout adRatio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vv=  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWidth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/appflood/d/a;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v1, p0, Lcom/appflood/d/a;->k:I

    mul-int v0, p2, v1

    div-int/2addr v0, p1

    :goto_1
    iget-boolean v2, p0, Lcom/appflood/d/a;->d:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/appflood/d/a;->j:Landroid/widget/ImageView;

    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resized w "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resizedH "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " higher "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/appflood/d/a;->D:I

    iget v6, p0, Lcom/appflood/d/a;->E:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget v6, p0, Lcom/appflood/d/a;->C:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v4, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, p0, Lcom/appflood/d/a;->A:I

    iget v1, p0, Lcom/appflood/d/a;->D:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appflood/d/a;->E:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/appflood/d/a;->C:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appflood/d/a;->B:I

    iget v0, p0, Lcom/appflood/d/a;->B:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    invoke-virtual {v1}, Lcom/appflood/f/d;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    :cond_2
    invoke-virtual {p0, v0, v7}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "w"

    iget v2, p0, Lcom/appflood/d/a;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h"

    iget v2, p0, Lcom/appflood/d/a;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    invoke-interface {v1, v0}, Lcom/appflood/c/b;->onFinish(Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/appflood/d/a;->l:I

    iget v1, p0, Lcom/appflood/d/a;->D:I

    iget v2, p0, Lcom/appflood/d/a;->E:I

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/appflood/d/a;->C:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    mul-int v1, v0, p1

    div-int/2addr v1, p2

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/appflood/d/a;->u:Landroid/view/SurfaceView;

    goto/16 :goto_2
.end method

.method final a(Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0xd

    const/4 v1, -0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/appflood/d/a;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v1, p0, Lcom/appflood/d/a;->d:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/SurfaceView;

    invoke-direct {v1, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appflood/d/a;->u:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/appflood/d/a;->u:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/appflood/d/a;->u:Landroid/view/SurfaceView;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/d/a;->u:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/appflood/d/b;

    iget-object v1, p0, Lcom/appflood/d/a;->u:Landroid/view/SurfaceView;

    iget-object v2, p0, Lcom/appflood/d/a;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/appflood/d/b;-><init>(Landroid/view/SurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iput-object p0, v0, Lcom/appflood/d/b;->b:Lcom/appflood/d/b$b;

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iput-object p0, v0, Lcom/appflood/d/b;->f:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iput-object p0, v0, Lcom/appflood/d/b;->g:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iput-object p0, v0, Lcom/appflood/d/b;->c:Lcom/appflood/d/b$c;

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iput-object p0, v0, Lcom/appflood/d/b;->d:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iput-object p0, v0, Lcom/appflood/d/b;->a:Lcom/appflood/d/b$a;

    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/appflood/d/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->C:I

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->D:I

    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->o:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->E:I

    iget-object v0, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/d/a;->y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appflood/d/a;->y:Landroid/widget/Button;

    const-string v1, "close_press.png"

    const-string v2, "close_pressed.png"

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appflood/d/a;->y:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/appflood/d/a;->D:I

    iget v2, p0, Lcom/appflood/d/a;->D:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v1, p0, Lcom/appflood/d/a;->E:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/appflood/d/a;->E:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/d/a;->y:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/appflood/d/a$a;

    invoke-direct {v0, p0, p1}, Lcom/appflood/d/a$a;-><init>(Lcom/appflood/d/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/appflood/d/a;->C:I

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    return-void

    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appflood/d/a;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appflood/d/a;->j:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/appflood/d/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appflood/d/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/appflood/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v3}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;B)V

    iput-object p0, v0, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V

    goto/16 :goto_0
.end method

.method final a(Landroid/content/Context;Z)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appflood/f/d;

    invoke-direct {v0, p1}, Lcom/appflood/f/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    :cond_0
    iget-object v0, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    invoke-virtual {v0}, Lcom/appflood/f/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne v0, p2, :cond_2

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    iget v0, p0, Lcom/appflood/d/a;->m:I

    iget v2, p0, Lcom/appflood/d/a;->n:I

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/appflood/d/a;->n:I

    :goto_2
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v3, v0, 0x3

    div-int/lit8 v4, v0, 0x3

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show progress!!!!!!!!!!! size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v0, v0, 0x3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    invoke-virtual {v0, v1}, Lcom/appflood/f/d;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/appflood/d/a;->m:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appflood/d/a;->x:Lcom/appflood/f/d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/appflood/f/d;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Lcom/appflood/c/b;)V
    .locals 3

    iput-object p1, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    iget-object v0, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "w"

    iget v2, p0, Lcom/appflood/d/a;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h"

    iget v2, p0, Lcom/appflood/d/a;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    invoke-interface {v1, v0}, Lcom/appflood/c/b;->onFinish(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/appflood/mraid/A;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireTrackEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appflood/mraid/A;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v0, p0, Lcom/appflood/d/a;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/d/a;->K:Lcom/appflood/mraid/AFBannerWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.mraidbridge.fireVideoEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/appflood/mraid/A;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appflood/mraid/AFBannerWebView;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    sget-object v0, Lcom/appflood/d/a$5;->a:[I

    invoke-virtual {p1}, Lcom/appflood/mraid/A;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v1, "ClickTracking"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v1, "ClickThrough"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/appflood/d/a;->a:Ljava/util/HashMap;

    const-string v1, "complete"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/k;->c(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result_width"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->m:I

    const-string v0, "result_height"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/appflood/d/a;->n:I

    iget v0, p0, Lcom/appflood/d/a;->m:I

    iget v1, p0, Lcom/appflood/d/a;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/appflood/d/a;->a(II)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFinished view result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-boolean v2, p0, Lcom/appflood/d/a;->e:Z

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->b()V

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/appflood/d/a;->c(I)V

    iget-object v1, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    invoke-virtual {v1, v0}, Lcom/appflood/d/a$a;->a(I)V

    iput-boolean v2, p0, Lcom/appflood/d/a;->L:Z

    invoke-virtual {p0}, Lcom/appflood/d/a;->b()V

    sget-object v0, Lcom/appflood/mraid/A;->a:Lcom/appflood/mraid/A;

    invoke-virtual {p0, v0}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appflood/d/a;->c()V

    goto :goto_0
.end method

.method final b()V
    .locals 3

    iget-boolean v0, p0, Lcom/appflood/d/a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/appflood/d/a;->r:I

    iget v0, p0, Lcom/appflood/d/a;->s:I

    invoke-direct {p0, v0}, Lcom/appflood/d/a;->c(I)V

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget v1, p0, Lcom/appflood/d/a;->s:I

    invoke-virtual {v0, v1}, Lcom/appflood/d/a$a;->a(I)V

    :cond_0
    new-instance v0, Lcom/appflood/d/a$4;

    invoke-direct {v0, p0}, Lcom/appflood/d/a$4;-><init>(Lcom/appflood/d/a;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0, p1}, Lcom/appflood/d/b;->a(I)V

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/d/a;->e:Z

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    const-string v1, "pause_press.png"

    const-string v2, "pause_pressed.png"

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final c()V
    .locals 2

    sget-object v0, Lcom/appflood/mraid/A;->h:Lcom/appflood/mraid/A;

    invoke-virtual {p0, v0}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    iget-boolean v0, p0, Lcom/appflood/d/a;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/appflood/d/b;->e:Z

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->d()V

    :cond_0
    iget-object v0, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    invoke-interface {v0}, Lcom/appflood/c/b;->onComplete()V

    :cond_1
    invoke-virtual {p0}, Lcom/appflood/d/a;->a()V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/appflood/d/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/appflood/d/a;->k:I

    invoke-virtual {p0}, Lcom/appflood/d/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lcom/appflood/d/a;->l:I

    iget v0, p0, Lcom/appflood/d/a;->k:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/appflood/d/a;->l:I

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/appflood/d/a$1;

    invoke-direct {v0, p0}, Lcom/appflood/d/a$1;-><init>(Lcom/appflood/d/a;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iget-boolean v0, v0, Lcom/appflood/d/b;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/appflood/d/a;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/appflood/d/a;->e:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/appflood/d/a;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->a()V

    :cond_2
    iput-boolean v1, p0, Lcom/appflood/d/a;->e:Z

    sget-object v0, Lcom/appflood/mraid/A;->c:Lcom/appflood/mraid/A;

    invoke-virtual {p0, v0}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    const-string v1, "play_press.png"

    const-string v2, "play_pressed.png"

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/appflood/d/a;->d:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->b()V

    :cond_4
    sget-object v0, Lcom/appflood/mraid/A;->d:Lcom/appflood/mraid/A;

    invoke-virtual {p0, v0}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appflood/d/a;->e:Z

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    const-string v1, "pause_press.png"

    const-string v2, "pause_pressed.png"

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Lcom/appflood/d/a;->c()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/appflood/d/a;->y:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/appflood/d/a;->a()V

    iget-object v0, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    invoke-interface {v0}, Lcom/appflood/c/b;->onClose()V

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/appflood/d/a;->u:Landroid/view/SurfaceView;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/appflood/d/a;->j:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    :cond_8
    sget-object v0, Lcom/appflood/mraid/A;->b:Lcom/appflood/mraid/A;

    invoke-virtual {p0, v0}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    goto :goto_0
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    sget-object v0, Lcom/appflood/mraid/A;->f:Lcom/appflood/mraid/A;

    invoke-virtual {p0, v0}, Lcom/appflood/d/a;->a(Lcom/appflood/mraid/A;)V

    iget-boolean v0, p0, Lcom/appflood/d/a;->L:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iget-object v1, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v1}, Lcom/appflood/d/b;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/appflood/d/b;->a(I)V

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v0}, Lcom/appflood/d/b;->a()V

    iput-boolean v3, p0, Lcom/appflood/d/a;->e:Z

    iget-object v0, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    iput-boolean v3, v0, Lcom/appflood/d/b;->e:Z

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v1, p0, Lcom/appflood/d/a;->h:Lcom/appflood/d/b;

    invoke-virtual {v1}, Lcom/appflood/d/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/appflood/d/a$a;->b(I)V

    iget-object v0, p0, Lcom/appflood/d/a;->g:Lcom/appflood/d/a$a;

    iget-object v0, v0, Lcom/appflood/d/a$a;->a:Landroid/widget/Button;

    const-string v1, "play_press.png"

    const-string v2, "play_pressed.png"

    invoke-static {v0, v1, v2}, Lcom/appflood/AFListActivity$c$1;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/appflood/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/appflood/d/a;->a(Landroid/content/Context;Z)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appflood/d/a;->w:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/appflood/d/a;->w:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/appflood/d/a;->w:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/appflood/d/a;->w:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/appflood/d/a;->w:Landroid/widget/TextView;

    const-string v1, "Please try later"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appflood/d/a;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appflood/d/a;->w:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/appflood/d/a;->u:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "w"

    iget v2, p0, Lcom/appflood/d/a;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h"

    iget v2, p0, Lcom/appflood/d/a;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "video_error"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/appflood/d/a;->F:Lcom/appflood/c/b;

    invoke-interface {v1, v0}, Lcom/appflood/c/b;->onFinish(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " error what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appflood/e/j;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appflood/d/a;->L:Z

    const/4 v0, 0x0

    return v0
.end method

.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public final requestFailed$440c3042(I)V
    .locals 0

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/appflood/d/a;->m:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/appflood/d/a;->n:I

    new-instance v1, Lcom/appflood/d/a$2;

    invoke-direct {v1, p0, v0}, Lcom/appflood/d/a$2;-><init>(Lcom/appflood/d/a;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
