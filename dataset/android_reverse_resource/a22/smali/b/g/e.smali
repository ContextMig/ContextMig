.class final synthetic Lb/g/e;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    nop

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v1, v3

    :goto_0
    if-gt v1, v2, :cond_3

    if-nez v3, :cond_0

    move v0, v1

    :goto_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lb/g/a;->a(C)Z

    move-result v0

    if-nez v3, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v0, v3

    goto :goto_2

    :cond_2
    if-nez v0, :cond_4

    :cond_3
    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    move v0, v3

    goto :goto_2
.end method

.method public static final b(Ljava/lang/CharSequence;)Lb/e/d;
    .locals 3

    const-string v0, "$receiver"

    invoke-static {p0, v0}, Lb/d/b/i;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Lb/e/d;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v0, v2}, Lb/e/d;-><init>(II)V

    return-object v1
.end method
