.class final Ldouzifly/list/ui/home/i$i;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/i;-><init>(Ldouzifly/list/ui/home/MainActivity;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/i;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/i;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/i$i;->a:Ldouzifly/list/ui/home/i;

    iput-object p2, p0, Ldouzifly/list/ui/home/i$i;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/i$i;->b()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/i$i;->b:Landroid/view/View;

    const v1, 0x7f0d00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Ldouzifly/list/ui/home/i$i;->a:Ldouzifly/list/ui/home/i;

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ldouzifly/list/f/d;->c()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-object v0
.end method
