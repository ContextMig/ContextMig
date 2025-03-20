.class final Lb/d;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b;
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lb/d/a/a;

.field private volatile b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb/d/a/a;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/d;->a:Lb/d/a/a;

    sget-object v0, Lb/f;->a:Lb/f;

    iput-object v0, p0, Lb/d;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lb/d;->c:Ljava/lang/Object;

    return-void

    :cond_0
    move-object p2, p0

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lb/d/a/a;Ljava/lang/Object;ILb/d/b/g;)V
    .locals 1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lb/d;-><init>(Lb/d/a/a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lb/d;->b:Ljava/lang/Object;

    sget-object v1, Lb/f;->a:Lb/f;

    if-eq v0, v1, :cond_0

    check-cast v0, Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lb/d;->c:Ljava/lang/Object;

    nop

    monitor-enter v2

    nop

    :try_start_0
    iget-object v0, p0, Lb/d;->b:Ljava/lang/Object;

    sget-object v1, Lb/f;->a:Lb/f;

    if-eq v0, v1, :cond_1

    check-cast v0, Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lb/d;->a:Lb/d/a/a;

    if-nez v0, :cond_2

    invoke-static {}, Lb/d/b/i;->a()V

    :cond_2
    invoke-interface {v0}, Lb/d/a/a;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lb/d;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Lb/d/a/a;

    iput-object v0, p0, Lb/d;->a:Lb/d/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lb/d;->b:Ljava/lang/Object;

    sget-object v1, Lb/f;->a:Lb/f;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lb/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/d;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    goto :goto_0
.end method
