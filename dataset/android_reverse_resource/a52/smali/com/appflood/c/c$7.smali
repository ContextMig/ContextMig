.class final Lcom/appflood/c/c$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/c/c;->a(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/appflood/c/c;


# direct methods
.method constructor <init>(Lcom/appflood/c/c;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iput-object p2, p0, Lcom/appflood/c/c$7;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appflood/c/c$7;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    iget-object v0, p0, Lcom/appflood/c/c$7;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->b:Lorg/json/JSONObject;

    const-string v1, "app_type"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apptype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/appflood/c/c$7;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-boolean v0, v0, Lcom/appflood/c/c;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget v0, v0, Lcom/appflood/c/c;->h:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget v0, v0, Lcom/appflood/c/c;->h:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/appflood/c/c$7;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/appflood/c/c$7;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v2, v2, Lcom/appflood/c/c;->b:Lorg/json/JSONObject;

    const-string v3, "width_bitmap"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->b:Lorg/json/JSONObject;

    const-string v2, "height_bitmap"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    invoke-interface {v0}, Lcom/appflood/c/c$a;->a()V

    :cond_1
    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-boolean v0, v0, Lcom/appflood/c/c;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->i:Lcom/appflood/c/c$a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/appflood/c/c$a;->a(Z)V

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appflood/c/c;->e:Z

    :cond_2
    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/appflood/b/b;

    iget-object v1, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v1, v1, Lcom/appflood/c/c;->b:Lorg/json/JSONObject;

    const-string v2, "show_cb_url"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/appflood/e/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v0}, Lcom/appflood/b/b;->e()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/appflood/c/c$7;->b:Lcom/appflood/c/c;

    iget-object v0, v0, Lcom/appflood/c/c;->c:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/appflood/c/c$7;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "error in adView.setImageBitmap"

    invoke-static {v0, v1}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
