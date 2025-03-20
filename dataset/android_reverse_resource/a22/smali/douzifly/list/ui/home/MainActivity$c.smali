.class final Ldouzifly/list/ui/home/MainActivity$c;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/ui/home/MainActivity;->j()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/ui/home/MainActivity;

.field final synthetic b:Ldouzifly/list/b/c;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ldouzifly/list/ui/home/MainActivity;Ldouzifly/list/b/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/ui/home/MainActivity$c;->a:Ldouzifly/list/ui/home/MainActivity;

    iput-object p2, p0, Ldouzifly/list/ui/home/MainActivity$c;->b:Ldouzifly/list/b/c;

    iput-object p3, p0, Ldouzifly/list/ui/home/MainActivity$c;->c:Ljava/lang/String;

    iput-object p4, p0, Ldouzifly/list/ui/home/MainActivity$c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/ui/home/MainActivity$c;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 11

    const/4 v8, 0x0

    sget-object v0, Ldouzifly/list/b/e;->a:Ldouzifly/list/b/e;

    iget-object v1, p0, Ldouzifly/list/ui/home/MainActivity$c;->b:Ldouzifly/list/b/c;

    if-nez v1, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    iget-object v2, p0, Ldouzifly/list/ui/home/MainActivity$c;->c:Ljava/lang/String;

    iget-object v3, p0, Ldouzifly/list/ui/home/MainActivity$c;->d:Ljava/lang/String;

    iget-object v4, p0, Ldouzifly/list/ui/home/MainActivity$c;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v4}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v4

    invoke-virtual {v4}, Ldouzifly/list/widget/InputPanel;->getReminderDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_0
    iget-object v6, p0, Ldouzifly/list/ui/home/MainActivity$c;->a:Ldouzifly/list/ui/home/MainActivity;

    invoke-virtual {v6}, Ldouzifly/list/ui/home/MainActivity;->c()Ldouzifly/list/widget/InputPanel;

    move-result-object v6

    invoke-virtual {v6}, Ldouzifly/list/widget/InputPanel;->getColorPicker()Ldouzifly/list/widget/ColorPicker;

    move-result-object v6

    invoke-virtual {v6}, Ldouzifly/list/widget/ColorPicker;->getSelectedColor()I

    move-result v6

    const/4 v7, 0x0

    const/16 v9, 0x60

    move-object v10, v8

    invoke-static/range {v0 .. v10}, Ldouzifly/list/b/e;->a(Ldouzifly/list/b/e;Ldouzifly/list/b/c;Ljava/lang/String;Ljava/lang/String;JIZLjava/lang/Long;ILjava/lang/Object;)V

    new-instance v0, Ldouzifly/list/ui/home/MainActivity$c$1;

    invoke-direct {v0, p0}, Ldouzifly/list/ui/home/MainActivity$c$1;-><init>(Ldouzifly/list/ui/home/MainActivity$c;)V

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Ldouzifly/list/f/h;->b(Lb/d/a/a;)V

    return-void

    :cond_1
    const/4 v4, 0x1

    neg-int v4, v4

    int-to-long v4, v4

    goto :goto_0
.end method
