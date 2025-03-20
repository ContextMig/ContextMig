.class public final Lcom/appflood/e/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/appflood/b/b$a;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/StateListDrawable;

.field final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/StateListDrawable;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/e/i;->a:Landroid/graphics/drawable/StateListDrawable;

    iput-object p2, p0, Lcom/appflood/e/i;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final requestFailed$440c3042(I)V
    .locals 0

    return-void
.end method

.method public final requestFinished(Lcom/appflood/b/b;)V
    .locals 3

    invoke-virtual {p1}, Lcom/appflood/b/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/appflood/e/i;->a:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/appflood/e/i;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/appflood/e/i$1;

    invoke-direct {v0, p0}, Lcom/appflood/e/i$1;-><init>(Lcom/appflood/e/i;)V

    invoke-static {v0}, Lcom/appflood/c/f;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
