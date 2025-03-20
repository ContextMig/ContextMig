.class public final Ldouzifly/list/f/h;
.super Ljava/lang/Object;


# static fields
.field private static final synthetic a:[Lb/f/e;

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Lb/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lb/f/e;

    const/4 v2, 0x0

    new-instance v0, Lb/d/b/m;

    const-class v3, Ldouzifly/list/f/h;

    const-string v4, "app-compileReleaseKotlin"

    invoke-static {v3, v4}, Lb/d/b/p;->a(Ljava/lang/Class;Ljava/lang/String;)Lb/f/c;

    move-result-object v3

    const-string v4, "handler"

    const-string v5, "getHandler()Landroid/os/Handler;"

    invoke-direct {v0, v3, v4, v5}, Lb/d/b/m;-><init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lb/d/b/p;->a(Lb/d/b/l;)Lb/f/g;

    move-result-object v0

    check-cast v0, Lb/f/e;

    aput-object v0, v1, v2

    sput-object v1, Ldouzifly/list/f/h;->a:[Lb/f/e;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Ldouzifly/list/f/h;->b:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Ldouzifly/list/f/h$b;->a:Ldouzifly/list/f/h$b;

    check-cast v0, Lb/d/a/a;

    invoke-static {v0}, Lb/c;->a(Lb/d/a/a;)Lb/b;

    move-result-object v0

    sput-object v0, Ldouzifly/list/f/h;->c:Lb/b;

    return-void
.end method

.method private static final a()Landroid/os/Handler;
    .locals 3

    sget-object v0, Ldouzifly/list/f/h;->c:Lb/b;

    sget-object v1, Ldouzifly/list/f/h;->a:[Lb/f/e;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    nop

    invoke-interface {v0}, Lb/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static final a(JLb/d/a/a;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ldouzifly/list/f/h;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Ldouzifly/list/f/i;

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-direct {v0, p2}, Ldouzifly/list/f/i;-><init>(Lb/d/a/a;)V

    goto :goto_0
.end method

.method public static final a(Lb/d/a/a;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ldouzifly/list/f/h;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ldouzifly/list/f/h$a;

    invoke-direct {v0, p0}, Ldouzifly/list/f/h$a;-><init>(Lb/d/a/a;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final b(Lb/d/a/a;)V
    .locals 2

    const-string v0, "t"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ldouzifly/list/f/h;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Ldouzifly/list/f/h$c;

    invoke-direct {v0, p0}, Ldouzifly/list/f/h$c;-><init>(Lb/d/a/a;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
