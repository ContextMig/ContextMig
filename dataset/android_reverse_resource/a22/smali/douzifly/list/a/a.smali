.class public final Ldouzifly/list/a/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldouzifly/list/a/b;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ldouzifly/list/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldouzifly/list/a/b;-><init>(Lb/d/b/g;)V

    sput-object v0, Ldouzifly/list/a/a;->a:Ldouzifly/list/a/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldouzifly/list/a/a;->b:Ljava/lang/String;

    iput-object p2, p0, Ldouzifly/list/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Ldouzifly/list/a/a;

    if-eqz v0, :cond_1

    check-cast p1, Ldouzifly/list/a/a;

    iget-object v0, p0, Ldouzifly/list/a/a;->b:Ljava/lang/String;

    iget-object v1, p1, Ldouzifly/list/a/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldouzifly/list/a/a;->c:Ljava/lang/String;

    iget-object v1, p1, Ldouzifly/list/a/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/d/b/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Ldouzifly/list/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldouzifly/list/a/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldouzifly/list/a/a;->b:Ljava/lang/String;

    return-object v0
.end method
