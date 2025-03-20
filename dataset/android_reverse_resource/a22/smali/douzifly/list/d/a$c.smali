.class final Ldouzifly/list/d/a$c;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/d/a;->a(I)V
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    iput p1, p0, Ldouzifly/list/d/a$c;->a:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/d/a$c;->b()V

    sget-object v0, Lb/g;->a:Lb/g;

    return-object v0
.end method

.method public final b()V
    .locals 3

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v1}, Ldouzifly/list/d/a;->e()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ldouzifly/list/d/a$c;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
