.class final Ldouzifly/list/ui/home/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/f;-><init>(Ldouzifly/list/ui/home/GroupEditorActivity;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/f;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/f;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/f$1;->a:Ldouzifly/list/ui/home/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type kotlin.Long"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ljava/lang/Long;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Ldouzifly/list/ui/home/f$1;->a:Ldouzifly/list/ui/home/f;

    iget-object v0, v0, Ldouzifly/list/ui/home/f;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    sget v1, Landroid/support/v7/app/AppCompatActivity;->RESULT_OK:I

    invoke-virtual {v0, v1, v2}, Ldouzifly/list/ui/home/GroupEditorActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Ldouzifly/list/ui/home/f$1;->a:Ldouzifly/list/ui/home/f;

    iget-object v0, v0, Ldouzifly/list/ui/home/f;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->finish()V

    return-void
.end method
