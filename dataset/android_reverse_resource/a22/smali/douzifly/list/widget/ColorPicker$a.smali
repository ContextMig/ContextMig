.class final Ldouzifly/list/widget/ColorPicker$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/widget/ColorPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/widget/ColorPicker;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ldouzifly/list/widget/ColorPicker;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/ColorPicker$a;->a:Ldouzifly/list/widget/ColorPicker;

    iput-object p2, p0, Ldouzifly/list/widget/ColorPicker$a;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type douzifly.list.widget.ColorPicker.Item"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Ldouzifly/list/widget/b;

    iget-object v1, p0, Ldouzifly/list/widget/ColorPicker$a;->a:Ldouzifly/list/widget/ColorPicker;

    invoke-virtual {v1, v0}, Ldouzifly/list/widget/ColorPicker;->setSelected(Ldouzifly/list/widget/b;)V

    return-void
.end method
