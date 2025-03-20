.class final Ldouzifly/list/widget/InputPanel$d;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/widget/InputPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/widget/InputPanel;


# direct methods
.method constructor <init>(Ldouzifly/list/widget/InputPanel;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/widget/InputPanel$d;->a:Ldouzifly/list/widget/InputPanel;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/widget/InputPanel$d;->b()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/widget/EditText;
    .locals 2

    iget-object v0, p0, Ldouzifly/list/widget/InputPanel$d;->a:Ldouzifly/list/widget/InputPanel;

    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Ldouzifly/list/widget/InputPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method
