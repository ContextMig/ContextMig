.class Lcom/dropbox/sync/android/DbxDoubleValue;
.super Lcom/dropbox/sync/android/DbxAtom;
.source "DbxDoubleValue.java"


# instance fields
.field public final value:D


# direct methods
.method constructor <init>(D)V
    .locals 3
    .param p1, "v"    # D

    .prologue
    .line 14
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->DOUBLE:Lcom/dropbox/sync/android/DbxFields$ValueType;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->DOUBLE:Lcom/dropbox/sync/android/DbxFields$AtomType;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxAtom;-><init>(Lcom/dropbox/sync/android/DbxFields$ValueType;Lcom/dropbox/sync/android/DbxFields$AtomType;)V

    .line 15
    iput-wide p1, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    .line 16
    return-void
.end method


# virtual methods
.method public asDouble()D
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    return-wide v0
.end method

.method public compareTo(Lcom/dropbox/sync/android/DbxValue;)I
    .locals 10
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 25
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 26
    :cond_0
    if-ne p0, p1, :cond_2

    .line 34
    :cond_1
    :goto_0
    return v2

    .line 27
    :cond_2
    instance-of v5, p1, Lcom/dropbox/sync/android/DbxDoubleValue;

    if-eqz v5, :cond_4

    .line 28
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxValue;->asDouble()D

    move-result-wide v0

    .line 29
    .local v0, "otherValue":D
    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    cmpl-double v5, v6, v0

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    cmpl-double v2, v6, v0

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    .line 30
    .end local v0    # "otherValue":D
    :cond_4
    instance-of v5, p1, Lcom/dropbox/sync/android/DbxLongValue;

    if-eqz v5, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxValue;->asLong()J

    move-result-wide v0

    .line 32
    .local v0, "otherValue":J
    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    long-to-double v8, v0

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    long-to-double v8, v0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_0

    .line 34
    .end local v0    # "otherValue":J
    :cond_6
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    iget-object v3, p1, Lcom/dropbox/sync/android/DbxValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

    invoke-virtual {v2, v3}, Lcom/dropbox/sync/android/DbxFields$ValueType;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6
    check-cast p1, Lcom/dropbox/sync/android/DbxValue;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxDoubleValue;->compareTo(Lcom/dropbox/sync/android/DbxValue;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 39
    if-ne p0, p1, :cond_1

    .line 47
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 40
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lcom/dropbox/sync/android/DbxDoubleValue;

    if-eqz v4, :cond_2

    .line 41
    check-cast p1, Lcom/dropbox/sync/android/DbxDoubleValue;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxDoubleValue;->asDouble()D

    move-result-wide v0

    .line 42
    .local v0, "otherValue":D
    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 43
    .end local v0    # "otherValue":D
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    instance-of v4, p1, Lcom/dropbox/sync/android/DbxLongValue;

    if-eqz v4, :cond_3

    .line 44
    check-cast p1, Lcom/dropbox/sync/android/DbxLongValue;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxLongValue;->asLong()J

    move-result-wide v0

    .line 45
    .local v0, "otherValue":J
    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    long-to-double v6, v0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "otherValue":J
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_3
    move v2, v3

    .line 47
    goto :goto_0
.end method

.method getNativeAtom()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeValue;->nativeDoubleAtom(D)J

    move-result-wide v0

    return-wide v0
.end method

.method getNativeValue()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeValue;->nativeDoubleValue(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 52
    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 53
    .local v0, "longBits":J
    const/16 v2, 0x20

    shr-long v2, v0, v2

    xor-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxDoubleValue;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
