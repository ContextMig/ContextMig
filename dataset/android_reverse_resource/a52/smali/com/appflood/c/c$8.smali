.class final Lcom/appflood/c/c$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/c;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/appflood/c/c;


# direct methods
.method constructor <init>(Lcom/appflood/c/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/c$8;->c:Lcom/appflood/c/c;

    iput-object p2, p0, Lcom/appflood/c/c$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/appflood/c/c$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/c$8;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/appflood/b/b;

    iget-object v2, p0, Lcom/appflood/c/c$8;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lcom/appflood/b/b;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/appflood/c/e;->a()Lcom/appflood/c/e;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "type"

    iget-object v0, p0, Lcom/appflood/c/c$8;->c:Lcom/appflood/c/c;

    iget v0, v0, Lcom/appflood/c/c;->h:I

    const/16 v5, 0xd

    if-ne v0, v5, :cond_2

    const/16 v0, 0x80

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/appflood/e/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/appflood/c/e;->a(ZLorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/appflood/c/c$8;->c:Lcom/appflood/c/c;

    iget-boolean v0, v0, Lcom/appflood/c/c;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appflood/c/c$8;->c:Lcom/appflood/c/c;

    iget-boolean v0, v0, Lcom/appflood/c/c;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/c/c$8;->c:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->a:[Lorg/json/JSONObject;

    array-length v0, v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/appflood/c/c$8;->c:Lcom/appflood/c/c;

    invoke-virtual {v0}, Lcom/appflood/c/c;->a()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/appflood/c/c$8;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/appflood/c/c$8;->c:Lcom/appflood/c/c;

    iget-object v1, v1, Lcom/appflood/c/c;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/appflood/c/c$8;->c:Lcom/appflood/c/c;

    iget v0, v0, Lcom/appflood/c/c;->h:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "error in fireEventDelegate"

    invoke-static {v0, v2}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
