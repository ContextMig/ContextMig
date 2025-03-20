.class public Lio/codetail/a/f;
.super Lcom/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "revealRadius"

    invoke-direct {p0, v0}, Lcom/a/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lio/codetail/a/a;)Ljava/lang/Float;
    .locals 1

    invoke-interface {p1}, Lio/codetail/a/a;->getRevealRadius()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lio/codetail/a/a;

    invoke-virtual {p0, p1}, Lio/codetail/a/f;->a(Lio/codetail/a/a;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Lio/codetail/a/a;F)V
    .locals 0

    invoke-interface {p1, p2}, Lio/codetail/a/a;->setRevealRadius(F)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lio/codetail/a/a;

    invoke-virtual {p0, p1, p2}, Lio/codetail/a/f;->a(Lio/codetail/a/a;F)V

    return-void
.end method
