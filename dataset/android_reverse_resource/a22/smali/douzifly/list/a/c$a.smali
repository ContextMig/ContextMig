.class final Ldouzifly/list/a/c$a;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/a/c;->a(Landroid/app/Activity;II)I
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Ldouzifly/list/a/c$a;->a:Landroid/app/Activity;

    iput-object p2, p0, Ldouzifly/list/a/c$a;->b:Ljava/lang/String;

    iput p3, p0, Ldouzifly/list/a/c$a;->c:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/a/c$a;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 3

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ldouzifly/list/a/c$a;->a:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07003f

    iget-object v0, p0, Ldouzifly/list/a/c$a;->a:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v2, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07003e

    iget-object v0, p0, Ldouzifly/list/a/c$a;->a:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v2, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v1, 0x104000a

    iget-object v0, p0, Ldouzifly/list/a/c$a;->a:Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    invoke-static {v1, v0}, Ldouzifly/list/f/f;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Ldouzifly/list/a/c$a$1;

    invoke-direct {v1, p0}, Ldouzifly/list/a/c$a$1;-><init>(Ldouzifly/list/a/c$a;)V

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
