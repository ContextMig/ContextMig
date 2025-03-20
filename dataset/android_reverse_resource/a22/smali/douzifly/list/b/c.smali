.class public final Ldouzifly/list/b/c;
.super Lcom/activeandroid/Model;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "tbGroup"
.end annotation


# static fields
.field public static final a:Ldouzifly/list/b/d;

# The value of this static final field might be set in the static constructor
.field private static final h:J = -0x1L


# instance fields
.field private b:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "title"
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;

.field private d:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "is_default"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "creation"
    .end annotation
.end field

.field private f:Z

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldouzifly/list/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/b/d;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/b/c;->a:Ldouzifly/list/b/d;

    const-wide/16 v0, 0x1

    neg-long v0, v0

    sput-wide v0, Ldouzifly/list/b/c;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldouzifly/list/b/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ldouzifly/list/b/b;

    invoke-static {v0}, Lb/a/d;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ldouzifly/list/b/c;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldouzifly/list/b/c;-><init>()V

    iput-object p1, p0, Ldouzifly/list/b/c;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic h()J
    .locals 2

    sget-wide v0, Ldouzifly/list/b/c;->h:J

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Ldouzifly/list/b/c;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Ldouzifly/list/ListApplication;->a:Ldouzifly/list/a;

    invoke-virtual {v0}, Ldouzifly/list/a;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldouzifly/list/b/c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ldouzifly/list/b/c;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Ldouzifly/list/b/c;->g:I

    return-void
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Ldouzifly/list/b/c;->e:J

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Ldouzifly/list/b/c;->d:Z

    return-void
.end method

.method public final b(J)Ldouzifly/list/b/b;
    .locals 5

    iget-object v0, p0, Ldouzifly/list/b/c;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    nop

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ldouzifly/list/b/b;

    invoke-virtual {v0}, Ldouzifly/list/b/b;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    check-cast v0, Ldouzifly/list/b/b;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/b/c;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Ldouzifly/list/b/c;->f:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Ldouzifly/list/b/c;->d:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Ldouzifly/list/b/c;->f:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Ldouzifly/list/b/c;->g:I

    return v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Ldouzifly/list/b/c;->c:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    nop

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldouzifly/list/b/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ldouzifly/list/b/b;->c(I)V

    sget-object v0, Lb/g;->a:Lb/g;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 2

    sget-object v0, Ldouzifly/list/d/a;->a:Ldouzifly/list/d/a;

    invoke-virtual {v0}, Ldouzifly/list/d/a;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Ldouzifly/list/b/c;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
