.class Landroid/support/v4/b/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/b/ad;


# direct methods
.method constructor <init>(Landroid/support/v4/b/ad;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/af;->a:Landroid/support/v4/b/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/af;->a:Landroid/support/v4/b/ad;

    invoke-static {v0}, Landroid/support/v4/b/ad;->a(Landroid/support/v4/b/ad;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/i/bt;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method
