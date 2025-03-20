.class final Lcom/appflood/e/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appflood/e/e;->requestFinished(Lcom/appflood/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/graphics/drawable/Drawable;

.field private synthetic b:Lcom/appflood/e/e;


# direct methods
.method constructor <init>(Lcom/appflood/e/e;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/appflood/e/e$1;->b:Lcom/appflood/e/e;

    iput-object p2, p0, Lcom/appflood/e/e$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appflood/e/e$1;->b:Lcom/appflood/e/e;

    iget-object v0, v0, Lcom/appflood/e/e;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/appflood/e/e$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
