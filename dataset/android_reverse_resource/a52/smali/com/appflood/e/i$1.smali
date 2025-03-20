.class final Lcom/appflood/e/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/e/i;->requestFinished(Lcom/appflood/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/appflood/e/i;


# direct methods
.method constructor <init>(Lcom/appflood/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/e/i$1;->a:Lcom/appflood/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appflood/e/i$1;->a:Lcom/appflood/e/i;

    iget-object v0, v0, Lcom/appflood/e/i;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/appflood/e/i$1;->a:Lcom/appflood/e/i;

    iget-object v1, v1, Lcom/appflood/e/i;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
