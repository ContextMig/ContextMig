.class public Lb/d/b/o;
.super Lb/d/b/n;


# instance fields
.field private final b:Lb/f/c;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/f/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lb/d/b/n;-><init>()V

    iput-object p1, p0, Lb/d/b/o;->b:Lb/f/c;

    iput-object p2, p0, Lb/d/b/o;->c:Ljava/lang/String;

    iput-object p3, p0, Lb/d/b/o;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lb/d/b/o;->a()Lb/f/j;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lb/f/j;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public c()Lb/f/c;
    .locals 1

    iget-object v0, p0, Lb/d/b/o;->b:Lb/f/c;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/d/b/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/d/b/o;->d:Ljava/lang/String;

    return-object v0
.end method
