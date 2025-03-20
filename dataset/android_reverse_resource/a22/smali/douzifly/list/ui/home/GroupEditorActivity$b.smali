.class final Ldouzifly/list/ui/home/GroupEditorActivity$b;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/GroupEditorActivity;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/GroupEditorActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/GroupEditorActivity;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/GroupEditorActivity$b;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/GroupEditorActivity$b;->b()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/support/v7/widget/RecyclerView;
    .locals 2

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity$b;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    const v1, 0x7f0d0075

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/GroupEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method
