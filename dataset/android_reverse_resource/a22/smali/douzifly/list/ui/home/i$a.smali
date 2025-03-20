.class final Ldouzifly/list/ui/home/i$a;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/i;-><init>(Ldouzifly/list/ui/home/MainActivity;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/i;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/i;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/i$a;->a:Ldouzifly/list/ui/home/i;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i$a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Ldouzifly/list/ui/home/i$a;->a:Ldouzifly/list/ui/home/i;

    iget-object v1, v0, Ldouzifly/list/ui/home/i;->a:Ldouzifly/list/ui/home/MainActivity;

    const/4 v0, 0x0

    check-cast v0, Landroid/util/AttributeSet;

    sget-object v2, Landroid/support/v7/cardview/R$styleable;->CardView:[I

    const v3, 0x7f0a00b6

    invoke-virtual {v1, v0, v2, v4, v3}, Ldouzifly/list/ui/home/MainActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method
