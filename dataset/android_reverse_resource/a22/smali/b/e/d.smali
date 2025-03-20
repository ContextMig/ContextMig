.class public final Lb/e/d;
.super Lb/e/a;


# static fields
.field public static final b:Lb/e/e;

.field private static final c:Lb/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb/e/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/e/e;-><init>(Lb/d/b/g;)V

    sput-object v0, Lb/e/d;->b:Lb/e/e;

    new-instance v0, Lb/e/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/e/d;-><init>(II)V

    sput-object v0, Lb/e/d;->c:Lb/e/d;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lb/e/a;-><init>(III)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 2

    invoke-virtual {p0}, Lb/e/d;->a()I

    move-result v0

    invoke-virtual {p0}, Lb/e/d;->b()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lb/e/d;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lb/e/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lb/e/d;

    invoke-virtual {v0}, Lb/e/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lb/e/d;->a()I

    move-result v1

    move-object v0, p1

    check-cast v0, Lb/e/d;

    invoke-virtual {v0}, Lb/e/d;->a()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lb/e/d;->b()I

    move-result v0

    check-cast p1, Lb/e/d;

    invoke-virtual {p1}, Lb/e/d;->b()I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lb/e/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lb/e/d;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lb/e/d;->b()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/e/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/e/d;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
