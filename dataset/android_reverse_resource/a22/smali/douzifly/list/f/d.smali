.class public final Ldouzifly/list/f/d;
.super Ljava/lang/Object;


# static fields
.field private static final synthetic a:[Lb/f/e;

.field private static final b:Lb/b;

.field private static final c:Lb/b;

.field private static final d:Lb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/m;

    const-class v3, Ldouzifly/list/f/d;

    const-string v4, "app-compileReleaseKotlin"

    invoke-static {v3, v4}, Lb/d/b/p;->a(Ljava/lang/Class;Ljava/lang/String;)Lb/f/c;

    move-result-object v3

    const-string v4, "fontRailway"

    const-string v5, "getFontRailway()Landroid/graphics/Typeface;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/m;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/l;)Lb/f/g;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    new-instance v0, Lb/d/b/m;

    const-class v3, Ldouzifly/list/f/d;

    const-string v4, "app-compileReleaseKotlin"

    invoke-static {v3, v4}, Lb/d/b/p;->a(Ljava/lang/Class;Ljava/lang/String;)Lb/f/c;

    move-result-object v3

    const-string v4, "fontAlegreya"

    const-string v5, "getFontAlegreya()Landroid/graphics/Typeface;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/m;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/l;)Lb/f/g;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    new-instance v0, Lb/d/b/m;

    const-class v3, Ldouzifly/list/f/d;

    const-string v4, "app-compileReleaseKotlin"

    invoke-static {v3, v4}, Lb/d/b/p;->a(Ljava/lang/Class;Ljava/lang/String;)Lb/f/c;

    move-result-object v3

    const-string v4, "fontSourceSansPro"

    const-string v5, "getFontSourceSansPro()Landroid/graphics/Typeface;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/m;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/l;)Lb/f/g;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/f/d;->a:[Lb/f/e;

    sget-object v0, Ldouzifly/list/f/d$b;->a:Ldouzifly/list/f/d$b;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/f/d;->b:Lb/b;

    sget-object v0, Ldouzifly/list/f/d$a;->a:Ldouzifly/list/f/d$a;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/f/d;->c:Lb/b;

    sget-object v0, Ldouzifly/list/f/d$c;->a:Ldouzifly/list/f/d$c;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/f/d;->d:Lb/b;

    return-void
.end method

.method public static final a()Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Ldouzifly/list/f/d;->b:Lb/b;

    sget-object v1, Ldouzifly/list/f/d;->a:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static final b()Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Ldouzifly/list/f/d;->c:Lb/b;

    sget-object v1, Ldouzifly/list/f/d;->a:[Lb/f/e;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static final c()Landroid/graphics/Typeface;
    .locals 3

    sget-object v0, Ldouzifly/list/f/d;->d:Lb/b;

    sget-object v1, Ldouzifly/list/f/d;->a:[Lb/f/e;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method
