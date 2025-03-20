.class public final Ldouzifly/list/b/b;
.super Lcom/activeandroid/Model;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "tbThing"
.end annotation


# instance fields
.field private a:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "positon"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "title"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "reminderTime"
    .end annotation
.end field

.field private d:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "isComplete"
    .end annotation
.end field

.field private e:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "color"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "pid"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "creation"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "content"
    .end annotation
.end field

.field private i:I

.field private j:Ldouzifly/list/b/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    neg-int v0, v1

    iput v0, p0, Ldouzifly/list/b/b;->a:I

    const-string v0, ""

    iput-object v0, p0, Ldouzifly/list/b/b;->b:Ljava/lang/String;

    neg-int v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Ldouzifly/list/b/b;->f:J

    const-string v0, ""

    iput-object v0, p0, Ldouzifly/list/b/b;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ldouzifly/list/b/b;-><init>()V

    iput-object p1, p0, Ldouzifly/list/b/b;->b:Ljava/lang/String;

    iput p4, p0, Ldouzifly/list/b/b;->e:I

    iput-wide p2, p0, Ldouzifly/list/b/b;->f:J

    return-void
.end method


# virtual methods
.method public a(Ldouzifly/list/b/b;)I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "other"

    invoke-static {p1, v1}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Ldouzifly/list/b/b;->d:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Ldouzifly/list/b/b;->d:Z

    if-eqz v1, :cond_1

    iget v0, p0, Ldouzifly/list/b/b;->a:I

    iget v1, p1, Ldouzifly/list/b/b;->a:I

    sub-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Ldouzifly/list/b/b;->d:Z

    if-nez v1, :cond_2

    iget-boolean v1, p1, Ldouzifly/list/b/b;->d:Z

    if-nez v1, :cond_2

    iget v0, p0, Ldouzifly/list/b/b;->a:I

    iget v1, p1, Ldouzifly/list/b/b;->a:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Ldouzifly/list/b/b;->d:Z

    if-nez v1, :cond_0

    neg-int v0, v0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Ldouzifly/list/b/b;->a:I

    return-void
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Ldouzifly/list/b/b;->c:J

    return-void
.end method

.method public final a(Ldouzifly/list/b/c;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/b/b;->j:Ldouzifly/list/b/c;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/b/b;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Ldouzifly/list/b/b;->d:Z

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Ldouzifly/list/b/b;->c:J

    return-wide v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Ldouzifly/list/b/b;->e:I

    return-void
.end method

.method public final b(J)V
    .locals 1

    iput-wide p1, p0, Ldouzifly/list/b/b;->g:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldouzifly/list/b/b;->h:Ljava/lang/String;

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Ldouzifly/list/b/b;->i:I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Ldouzifly/list/b/b;->d:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ldouzifly/list/b/b;

    invoke-virtual {p0, p1}, Ldouzifly/list/b/b;->a(Ldouzifly/list/b/b;)I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Ldouzifly/list/b/b;->e:I

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Ldouzifly/list/b/b;->g:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/b/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Ldouzifly/list/b/b;->i:I

    return v0
.end method

.method public final h()Ldouzifly/list/b/c;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/b/b;->j:Ldouzifly/list/b/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldouzifly/list/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldouzifly/list/b/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
