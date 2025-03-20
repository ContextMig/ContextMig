.class final Ldouzifly/list/ui/home/GroupEditorActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/GroupEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/GroupEditorActivity;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/GroupEditorActivity;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/GroupEditorActivity$c;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity$c;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->c()Ldouzifly/list/ui/home/e;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/ui/home/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity$c;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity$c;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->c()Ldouzifly/list/ui/home/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldouzifly/list/ui/home/e;->a(Z)V

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity$c;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->a()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Ldouzifly/list/ui/home/GroupEditorActivity$c;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v1}, Ldouzifly/list/ui/home/GroupEditorActivity;->c()Ldouzifly/list/ui/home/e;

    move-result-object v1

    invoke-virtual {v1}, Ldouzifly/list/ui/home/e;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    iget-object v0, p0, Ldouzifly/list/ui/home/GroupEditorActivity$c;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->b()Lcom/github/clans/fab/FloatingActionButton;

    move-result-object v1

    sget-object v0, Lcom/mikepenz/google_material_typeface_library/b;->J:Lcom/mikepenz/google_material_typeface_library/b;

    check-cast v0, Lcom/mikepenz/iconics/typeface/a;

    const v2, 0x7f0c0070

    invoke-static {v0, v2}, Ldouzifly/list/f/e;->b(Lcom/mikepenz/iconics/typeface/a;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
