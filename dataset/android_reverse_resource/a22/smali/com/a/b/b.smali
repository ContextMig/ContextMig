.class public abstract Lcom/a/b/b;
.super Lcom/a/b/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Lcom/a/b/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method
