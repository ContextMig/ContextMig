.class Lcom/dropbox/sync/android/DbxLongValue;
.super Lcom/dropbox/sync/android/DbxAtom;
.source "DbxLongValue.java"


# instance fields
.field public final value:J


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "v"    # J

    .prologue
    .line 14
    sget-object v0, Lcom/dropbox/sync/android/DbxFields$ValueType;->LONG:Lcom/dropbox/sync/android/DbxFields$ValueType;

    sget-object v1, Lcom/dropbox/sync/android/DbxFields$AtomType;->LONG:Lcom/dropbox/sync/android/DbxFields$AtomType;

    invoke-direct {p0, v0, v1}, Lcom/dropbox/sync/android/DbxAtom;-><init>(Lcom/dropbox/sync/android/DbxFields$ValueType;Lcom/dropbox/sync/android/DbxFields$AtomType;)V

    .line 15
    iput-wide p1, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    .line 16
    return-void
.end method


# virtual methods
.method public asDouble()D
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public asLong()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    return-wide v0
.end method

.method public compareTo(Lcom/dropbox/sync/android/DbxValue;)I
    .locals 8
    .param p1, "other"    # Lcom/dropbox/sync/android/DbxValue;

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 30
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 31
    :cond_0
    if-ne p0, p1, :cond_2

    .line 39
    :cond_1
    :goto_0
    return v2

    .line 32
    :cond_2
    instance-of v5, p1, Lcom/dropbox/sync/android/DbxLongValue;

    if-eqz v5, :cond_4

    .line 33
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxValue;->asLong()J

    move-result-wide v0

    .line 34
    .local v0, "otherValue":J
    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    cmp-long v5, v6, v0

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    cmp-long v2, v6, v0

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    .line 35
    .end local v0    # "otherValue":J
    :cond_4
    instance-of v5, p1, Lcom/dropbox/sync/android/DbxDoubleValue;

    if-eqz v5, :cond_6

    .line 36
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxValue;->asDouble()D

    move-result-wide v0

    .line 37
    .local v0, "otherValue":D
    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    long-to-double v6, v6

    cmpl-double v5, v6, v0

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    long-to-double v6, v6

    cmpl-double v2, v6, v0

    if-lez v2, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_0

    .line 39
    .end local v0    # "otherValue":D
    :cond_6
    iget-object v2, p0, Lcom/dropbox/sync/android/DbxLongValue;->valueType:Lcom/dropbox/sync/android/DbxFields$ValueType;

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
    invoke-virtual {p0, p1}, Lcom/dropbox/sync/android/DbxLongValue;->compareTo(Lcom/dropbox/sync/android/DbxValue;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 52
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v2

    .line 45
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Lcom/dropbox/sync/android/DbxLongValue;

    if-eqz v4, :cond_2

    .line 46
    check-cast p1, Lcom/dropbox/sync/android/DbxLongValue;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxLongValue;->asLong()J

    move-result-wide v0

    .line 47
    .local v0, "otherValue":J
    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 48
    .end local v0    # "otherValue":J
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_2
    instance-of v4, p1, Lcom/dropbox/sync/android/DbxDoubleValue;

    if-eqz v4, :cond_3

    .line 49
    check-cast p1, Lcom/dropbox/sync/android/DbxDoubleValue;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/dropbox/sync/android/DbxDoubleValue;->asDouble()D

    move-result-wide v0

    .line 50
    .local v0, "otherValue":D
    iget-wide v4, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    long-to-double v4, v4

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0    # "otherValue":D
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_3
    move v2, v3

    .line 52
    goto :goto_0
.end method

.method getNativeAtom()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeValue;->nativeIntegerAtom(J)J

    move-result-wide v0

    return-wide v0
.end method

.method getNativeValue()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    invoke-static {v0, v1}, Lcom/dropbox/sync/android/NativeValue;->nativeIntegerValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    iget-wide v2, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/dropbox/sync/android/DbxLongValue;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
