.class final Ldouzifly/list/ui/home/DetailActivity$b;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/DetailActivity;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/DetailActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/DetailActivity;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/DetailActivity$b;->a:Ldouzifly/list/ui/home/DetailActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/DetailActivity$b;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/github/clans/fab/FloatingActionButton;
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/DetailActivity$b;->a:Ldouzifly/list/ui/home/DetailActivity;

    const v1, 0x7f0d0071

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type com.github.clans.fab.FloatingActionButton"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lcom/github/clans/fab/FloatingActionButton;

    sget-object v1, Lcom/mikepenz/google_material_typeface_library/b;->J:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v1, Lcom/mikepenz/iconics/typeface/a;

    const v2, 0x7f0c0070

    invoke-static {v1, v2}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method
