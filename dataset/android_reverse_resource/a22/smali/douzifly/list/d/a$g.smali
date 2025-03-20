.class final Ldouzifly/list/d/a$g;
.super Lb/d/b/j;

# interfaces
.implements Lb/d/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/d/a;-><init>()V
.end annotation


# static fields
.field public static final a:Ldouzifly/list/d/a$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldouzifly/list/d/a$g;

    invoke-direct {v0}, Ldouzifly/list/d/a$g;-><init>()V

    sput-object v0, Ldouzifly/list/d/a$g;->a:Ldouzifly/list/d/a$g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/d/b/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldouzifly/list/d/a$g;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 3

    sget-object v0, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    invoke-virtual {v0}, Ldouzifly/list/a;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_0
    const-string v1, "settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
