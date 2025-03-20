.class Landroid/support/v4/app/af$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/af;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/af;


# direct methods
.method constructor <init>(Landroid/support/v4/app/af;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/af$1;->a:Landroid/support/v4/app/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/af$1;->a:Landroid/support/v4/app/af;

    invoke-static {v0}, Landroid/support/v4/app/af;->a(Landroid/support/v4/app/af;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/bx;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method
