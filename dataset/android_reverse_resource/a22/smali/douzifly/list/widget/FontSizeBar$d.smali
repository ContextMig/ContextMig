.class final Ldouzifly/list/widget/FontSizeBar$d;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/widget/FontSizeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/widget/FontSizeBar;


# direct methods
.method constructor <init>(Ldouzifly/list/widget/FontSizeBar;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/widget/FontSizeBar$d;->a:Ldouzifly/list/widget/FontSizeBar;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/widget/FontSizeBar$d;->b()Landroid/widget/SeekBar;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/widget/SeekBar;
    .locals 2

    iget-object v0, p0, Ldouzifly/list/widget/FontSizeBar$d;->a:Ldouzifly/list/widget/FontSizeBar;

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/FontSizeBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.SeekBar"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/widget/SeekBar;

    return-object v0
.end method
