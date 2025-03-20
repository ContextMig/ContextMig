.class Landroid/support/v4/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/b/as;


# instance fields
.field final synthetic a:Landroid/support/v4/b/o;

.field final synthetic b:Landroid/support/v4/b/e;


# direct methods
.method constructor <init>(Landroid/support/v4/b/e;Landroid/support/v4/b/o;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/b/f;->b:Landroid/support/v4/b/e;

    iput-object p2, p0, Landroid/support/v4/b/f;->a:Landroid/support/v4/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/f;->a:Landroid/support/v4/b/o;

    invoke-virtual {v0}, Landroid/support/v4/b/o;->g()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
