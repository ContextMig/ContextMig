.class final Ldouzifly/list/ui/home/MainActivity$e$1$1;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity$e$1;->b()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity$e$1;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity$e$1;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$e$1$1;->a:Ldouzifly/list/ui/home/MainActivity$e$1;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity$e$1$1;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Ldouzifly/list/ui/home/MainActivity$e$1$1;->a:Ldouzifly/list/ui/home/MainActivity$e$1;

    iget-object v0, v0, Ldouzifly/list/ui/home/MainActivity$e$1;->a:Ldouzifly/list/ui/home/MainActivity$e;

    iget-object v0, v0, Ldouzifly/list/ui/home/MainActivity$e;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v0}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v0

    invoke-virtual {v0}, Ldouzifly/list/widget/InputPanel;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    nop

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lb/e;

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {v0, v1}, Lb/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const-wide/16 v2, 0x64

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$e$1$1$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$e$1$1$1;-><init>(Ldouzifly/list/ui/home/MainActivity$e$1$1;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v2, v3, v0}, Ldouzifly/list/f/h;->a(JLb/d/a/a;)V

    return-void
.end method
