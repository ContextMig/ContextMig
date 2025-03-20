.class public final Lb/e/c;
.super Lb/a/h;


# instance fields
.field private a:I

.field private final b:I

.field private c:Z

.field private final d:I


# direct methods
.method public constructor <init>(III)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lb/a/h;-><init>()V

    iput p3, p0, Lb/e/c;->d:I

    iput p1, p0, Lb/e/c;->a:I

    iput p2, p0, Lb/e/c;->b:I

    iget v2, p0, Lb/e/c;->d:I

    if-lez v2, :cond_2

    if-gt p1, p2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lb/e/c;->c:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public b()I
    .locals 3

    iget v0, p0, Lb/e/c;->a:I

    iget v1, p0, Lb/e/c;->b:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb/e/c;->c:Z

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lb/e/c;->a:I

    iget v2, p0, Lb/e/c;->d:I

    add-int/2addr v1, v2

    iput v1, p0, Lb/e/c;->a:I

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lb/e/c;->c:Z

    return v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Mutating immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
