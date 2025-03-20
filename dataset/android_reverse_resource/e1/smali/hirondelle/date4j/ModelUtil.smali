.class final Lhirondelle/date4j/ModelUtil;
.super Ljava/lang/Object;
.source "ModelUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhirondelle/date4j/ModelUtil$NullsGo;
    }
.end annotation


# static fields
.field static final HASH_SEED:I = 0x17

.field private static final fODD_PRIME_NUMBER:I = 0x25


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    return-void
.end method

.method static areEqual(CC)Z
    .locals 1
    .param p0, "aThis"    # C
    .param p1, "aThat"    # C

    .prologue
    .line 423
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static areEqual(DD)Z
    .locals 4
    .param p0, "aThis"    # D
    .param p2, "aThat"    # D

    .prologue
    .line 443
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static areEqual(FF)Z
    .locals 2
    .param p0, "aThis"    # F
    .param p1, "aThat"    # F

    .prologue
    .line 438
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static areEqual(JJ)Z
    .locals 2
    .param p0, "aThis"    # J
    .param p2, "aThat"    # J

    .prologue
    .line 433
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "aThis"    # Ljava/lang/Object;
    .param p1, "aThat"    # Ljava/lang/Object;

    .prologue
    .line 452
    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lhirondelle/date4j/ModelUtil;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method does not currently support arrays."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_1
    if-nez p0, :cond_3

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static areEqual(ZZ)Z
    .locals 1
    .param p0, "aThis"    # Z
    .param p1, "aThat"    # Z

    .prologue
    .line 418
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static comparePossiblyNull(Ljava/lang/Comparable;Ljava/lang/Comparable;Lhirondelle/date4j/ModelUtil$NullsGo;)I
    .locals 5
    .param p2, "aNullsGo"    # Lhirondelle/date4j/ModelUtil$NullsGo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;",
            "Lhirondelle/date4j/ModelUtil$NullsGo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "aThis":Ljava/lang/Comparable;, "TT;"
    .local p1, "aThat":Ljava/lang/Comparable;, "TT;"
    const/4 v2, 0x0

    .line 491
    .local v2, "EQUAL":I
    const/4 v1, -0x1

    .line 492
    .local v1, "BEFORE":I
    const/4 v0, 0x1

    .line 493
    .local v0, "AFTER":I
    move v3, v2

    .line 495
    .local v3, "result":I
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 496
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 513
    :cond_0
    :goto_0
    return v3

    .line 500
    :cond_1
    if-nez p0, :cond_3

    if-nez p1, :cond_3

    .line 509
    :cond_2
    :goto_1
    sget-object v4, Lhirondelle/date4j/ModelUtil$NullsGo;->LAST:Lhirondelle/date4j/ModelUtil$NullsGo;

    if-ne v4, p2, :cond_0

    .line 510
    mul-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 503
    :cond_3
    if-nez p0, :cond_4

    if-eqz p1, :cond_4

    .line 504
    move v3, v1

    goto :goto_1

    .line 506
    :cond_4
    if-eqz p0, :cond_2

    if-nez p1, :cond_2

    .line 507
    move v3, v0

    goto :goto_1
.end method

.method static equalsFor([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "aThisSignificantFields"    # [Ljava/lang/Object;
    .param p1, "aThatSignificantFields"    # [Ljava/lang/Object;

    .prologue
    .line 399
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 400
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array lengths do not match. \'This\' length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", while \'That\' length is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    :cond_0
    const/4 v1, 0x1

    .line 407
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 408
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-static {v2, v3}, Lhirondelle/date4j/ModelUtil;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 409
    const/4 v1, 0x0

    .line 413
    :cond_1
    return v1

    .line 407
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static firstTerm(I)I
    .locals 1
    .param p0, "aSeed"    # I

    .prologue
    .line 525
    mul-int/lit8 v0, p0, 0x25

    return v0
.end method

.method static hash(IC)I
    .locals 1
    .param p0, "aSeed"    # I
    .param p1, "aChar"    # C

    .prologue
    .line 284
    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->firstTerm(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method static hash(ID)I
    .locals 3
    .param p0, "aSeed"    # I
    .param p1, "aDouble"    # D

    .prologue
    .line 307
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lhirondelle/date4j/ModelUtil;->hash(IJ)I

    move-result v0

    return v0
.end method

.method static hash(IF)I
    .locals 1
    .param p0, "aSeed"    # I
    .param p1, "aFloat"    # F

    .prologue
    .line 302
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p0, v0}, Lhirondelle/date4j/ModelUtil;->hash(II)I

    move-result v0

    return v0
.end method

.method static hash(II)I
    .locals 1
    .param p0, "aSeed"    # I
    .param p1, "aInt"    # I

    .prologue
    .line 292
    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->firstTerm(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method static hash(IJ)I
    .locals 5
    .param p0, "aSeed"    # I
    .param p1, "aLong"    # J

    .prologue
    .line 297
    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->firstTerm(I)I

    move-result v0

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method static hash(ILjava/lang/Object;)I
    .locals 5
    .param p0, "aSeed"    # I
    .param p1, "aObject"    # Ljava/lang/Object;

    .prologue
    .line 319
    move v3, p0

    .line 320
    .local v3, "result":I
    if-nez p1, :cond_1

    .line 321
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lhirondelle/date4j/ModelUtil;->hash(II)I

    move-result v3

    .line 334
    :cond_0
    :goto_0
    return v3

    .line 323
    :cond_1
    invoke-static {p1}, Lhirondelle/date4j/ModelUtil;->isArray(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 324
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v3, v4}, Lhirondelle/date4j/ModelUtil;->hash(II)I

    move-result v3

    goto :goto_0

    .line 327
    :cond_2
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 328
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 329
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 331
    .local v1, "item":Ljava/lang/Object;
    invoke-static {v3, v1}, Lhirondelle/date4j/ModelUtil;->hash(ILjava/lang/Object;)I

    move-result v3

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static hash(IZ)I
    .locals 2
    .param p0, "aSeed"    # I
    .param p1, "aBoolean"    # Z

    .prologue
    .line 279
    invoke-static {p0}, Lhirondelle/date4j/ModelUtil;->firstTerm(I)I

    move-result v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final varargs hashCodeFor([Ljava/lang/Object;)I
    .locals 5
    .param p0, "aFields"    # [Ljava/lang/Object;

    .prologue
    .line 262
    const/16 v4, 0x17

    .line 263
    .local v4, "result":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 264
    .local v1, "field":Ljava/lang/Object;
    invoke-static {v4, v1}, Lhirondelle/date4j/ModelUtil;->hash(ILjava/lang/Object;)I

    move-result v4

    .line 263
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v1    # "field":Ljava/lang/Object;
    :cond_0
    return v4
.end method

.method private static isArray(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "aObject"    # Ljava/lang/Object;

    .prologue
    .line 529
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static quickEquals(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "aThis"    # Ljava/lang/Object;
    .param p1, "aThat"    # Ljava/lang/Object;

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "result":Ljava/lang/Boolean;
    if-ne p0, p1, :cond_1

    .line 374
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 382
    :cond_0
    :goto_0
    return-object v0

    .line 377
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 378
    .local v1, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static toStringAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "aObject"    # Ljava/lang/Object;
    .param p1, "aSpecialClass"    # Ljava/lang/Class;
    .param p2, "aMethodName"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p0, p1, p2}, Lhirondelle/date4j/ToStringUtil;->getTextAvoidCyclicRefs(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toStringFor(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "aObject"    # Ljava/lang/Object;

    .prologue
    .line 229
    invoke-static {p0}, Lhirondelle/date4j/ToStringUtil;->getText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
