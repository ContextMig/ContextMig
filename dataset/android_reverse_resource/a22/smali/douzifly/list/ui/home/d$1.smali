.class final Ldouzifly/list/ui/home/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/d;-><init>(Ldouzifly/list/ui/home/GroupEditorActivity;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/d;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/d;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/ui/home/d$1;->a:Ldouzifly/list/ui/home/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Ldouzifly/list/ui/home/d$1;->a:Ldouzifly/list/ui/home/d;

    iget-object v0, v0, Ldouzifly/list/ui/home/d;->a:Ldouzifly/list/ui/home/GroupEditorActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/GroupEditorActivity;->e()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
